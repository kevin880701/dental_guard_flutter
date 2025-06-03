import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/widgets/shape/line_widget.dart';
import '../../../../../../core/widgets/text/app_text.dart';
import '../../../../../../core/widgets/text/text_theme.dart';
import '../../../../data/models/response/group_brushing_stats/group_brushing_stats_data.dart';
import '../../../../domain/entity/chart_time_status.dart';

class ChartInfoWidget extends StatelessWidget {
  const ChartInfoWidget({
    super.key,
    required this.data,
    required this.chartTimeStatus,
  });

  final GroupBrushingStatsData? data;
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

  // 根據 chartTimeStatus 給不同的 label
  String get avgLabel {
    switch (chartTimeStatus) {
      case ChartTimeStatus.day:
        return "本日平均";
      case ChartTimeStatus.month:
        return "本月平均";
      case ChartTimeStatus.year:
        return "本年平均";
      case ChartTimeStatus.hour:
        return "本小時平均";
    }
  }

  String get baselineLabel {
    switch (chartTimeStatus) {
      case ChartTimeStatus.day:
        return "昨日平均";
      case ChartTimeStatus.month:
        return "上個月平均";
      case ChartTimeStatus.year:
        return "去年平均";
      case ChartTimeStatus.hour:
        return "上個小時平均";
    }
  }

  @override
  Widget build(BuildContext context) {
    final String time = data != null ? formatTime(data!.timeGroup) : "--";
    final String score = data != null ? data!.value.toStringAsFixed(1) : "--";
    final String baseScore = data != null ? data!.baseValue.toStringAsFixed(1) : "--";

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(children: [
            AppText(
              text: "時間",
              textStyle: labelSmall,
              color: AppColors.grey,
            ),
            const SizedBox(width: 12),
            AppText(
              text: time,
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
            label: avgLabel,
            value: score,
            unit: "%",
            color: AppColors.chartYellow,
          ),
          _infoRow(
            label: baselineLabel,
            value: baseScore,
            unit: "%",
            color: Colors.red,
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