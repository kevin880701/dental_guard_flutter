import 'package:flutter/material.dart';
import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/widgets/shape/line_widget.dart';
import '../../../../../../core/widgets/text/app_text.dart';
import '../../../../../../core/widgets/text/text_theme.dart';
import '../../../../data/models/response/group_top_user/group_top_user.dart';
import '../../../../domain/entity/rank_sort_criteria.dart';

///
/// 顯示單個使用者排名詳細資訊的 Widget。
///
/// 根據傳入的排序標準 (RankSortCriteria)，動態顯示對應的數值。
///
class RankInfoWidget extends StatelessWidget {
  const RankInfoWidget({
    super.key,
    required this.groupTopUser,
    required this.criteria,
  });

  final GroupTopUser? groupTopUser;
  final RankSortCriteria criteria;

  @override
  Widget build(BuildContext context) {
    if (groupTopUser == null) {
      return const SizedBox.shrink();
    }

    final String label;
    final String value;
    final String? unit;

    if (criteria == RankSortCriteria.plaquePercent) {
      label = AppStrings.averagePlaquePercentage;
      value = groupTopUser!.avgPlaquePercent.toStringAsFixed(1);
      unit = "%";
    } else { // RankSortCriteria.recordCount
      label = AppStrings.averageNumberOfUsers;
      value = groupTopUser!.recordCount.toString();
      unit = "次";
    }

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          Row(children: [
            AppText(
              text: "第${groupTopUser?.rank}名",
              textStyle: labelSmall,
              color: AppColors.grey,
            ),
            const SizedBox(width: 12),
            AppText(
              text: groupTopUser!.userName, // 顯示使用者名稱
              textStyle: titleMedium,
              color: AppColors.primaryBlack,
            ),
          ]),
          const SizedBox(height: 4),
          const LineWidget(
            direction: LineDirection.horizontal,
            color: AppColors.borderGrey,
            thickness: 1,
          ),
          const SizedBox(height: 4),
          _infoRow(
            label: label,
            value: value,
            unit: unit,
            color: AppColors.chartPurple,
          ),
        ],
      ),
    );
  }

  Widget _infoRow({
    required String label,
    required String value,
    String? unit,
    required Color color,
  }) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 4),
            Container(
              color: color,
              width: 4,
              height: 20,
            ),
            const SizedBox(width: 4),
            AppText(
              text: label,
              textStyle: labelSmall,
              color: AppColors.grey,
            ),
            const SizedBox(width: 12),
            AppText(
              text: value,
              textStyle: titleMedium,
              color: AppColors.primaryBlack,
            ),
            if (unit != null) ...[
              const SizedBox(width: 6),
              AppText(
                text: unit,
                textStyle: labelSmall,
                color: AppColors.grey,
              ),
            ],
            const Spacer(),
          ],
        ),
        const SizedBox(height: 4),
        const LineWidget(
          direction: LineDirection.horizontal,
          isDashed: true,
          color: AppColors.borderGrey,
          thickness: 1,
          dashLength: 12,
          gap: 6,
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
