import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/widgets/shape/line_widget.dart';
import '../../../../../../core/widgets/text/app_text.dart';
import '../../../../../../core/widgets/text/text_theme.dart';
import '../../../../data/models/response/brushing_stats/brushing_stats_data.dart';
import '../../../../domain/entity/chart_time_status.dart';

class SmoothLineInfoWidget extends StatelessWidget {
  const SmoothLineInfoWidget({
    super.key,
    required this.data,
    required this.chartTimeStatus,
  });

  final List<BrushingStatsData?> data;
  final ChartTimeStatus chartTimeStatus;

  // 依據 ChartTimeStatus 轉換日期格式
  String formatTime(DateTime dt) {
    switch (chartTimeStatus) {
      case ChartTimeStatus.day:
        return DateFormat('HH:mm').format(dt);
      case ChartTimeStatus.month:
        return DateFormat('MM/dd').format(dt);
      case ChartTimeStatus.year:
        return DateFormat('yyyy/MM').format(dt);
      case ChartTimeStatus.hour:
        return DateFormat('mm').format(dt);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const LineWidget(
            direction: LineDirection.horizontal,
            color: AppColors.borderGrey,
            thickness: 1,
          ),
          const SizedBox(height: 4),
          for (int i = 0; i < data.length; i++)
            _infoRow(
              label: formatTime(data[i]!.timeGroup),
              value: data[i]!.count.toString(),
              unit: '次',
            ),
        ],
      ),
    );
  }

  Widget _infoRow({
    required String label,
    required String value,
    String? unit,
  }) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 4),
            AppText(
              text: label,
              textStyle: titleMedium,
              color: AppColors.primaryBlack,
            ),
            Spacer(),
            AppText(
              text: value,
              textStyle: bodyMedium,
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