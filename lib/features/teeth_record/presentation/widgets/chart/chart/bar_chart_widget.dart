import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../data/models/response/group_brushing_stats/group_brushing_stats_data.dart';
import '../../../../domain/entity/chart_time_status.dart';
import '../Indicator.dart';

class BarChartWidget extends StatelessWidget {
  final List<GroupBrushingStatsData> data;
  final ChartTimeStatus chartTimeStatus;
  final void Function(
      GroupBrushingStatsData data, GroupBrushingStatsData baseLine)? onTap;

  const BarChartWidget({
    super.key,
    required this.data,
    required this.chartTimeStatus,
    this.onTap,
  });

  String _getXLabel(GroupBrushingStatsData d) {
    switch (chartTimeStatus) {
      case ChartTimeStatus.hour:
        return d.timeGroup.minute.toString().padLeft(2, '0'); // 分
      case ChartTimeStatus.day:
        return d.timeGroup.hour.toString().padLeft(2, '0'); // 小時
      case ChartTimeStatus.month:
        return d.timeGroup.day.toString().padLeft(2, '0'); // 日
      case ChartTimeStatus.year:
        return d.timeGroup.month.toString().padLeft(2, '0'); // 月
    }
  }

  @override
  Widget build(BuildContext context) {
    // X 軸標籤
    final List<String> xLabels = data.map(_getXLabel).toList();

    String xValueMapper(GroupBrushingStatsData d, int i) => xLabels[i];

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2.2,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              interval: 1,
              majorGridLines: const MajorGridLines(width: 0),
              majorTickLines: const MajorTickLines(size: 0),
              axisLine: const AxisLine(width: 0),
              axisLabelFormatter: (AxisLabelRenderDetails details) {
                int idx = details.value.toInt();
                final lastIdx = xLabels.length - 1;
                bool shouldShow = false;
                switch (chartTimeStatus) {
                  case ChartTimeStatus.hour:
                    shouldShow = idx % 15 == 0 || idx == lastIdx;
                    break;
                  case ChartTimeStatus.day:
                    shouldShow = idx % 4 == 0 || idx == lastIdx;
                    break;
                  case ChartTimeStatus.month:
                    shouldShow = (idx % 5 == 0 && idx <= 25) || idx == lastIdx;
                    break;
                  case ChartTimeStatus.year:
                    shouldShow = true;
                    break;
                }
                return ChartAxisLabel(
                  shouldShow ? xLabels[idx] : '',
                  labelSmall,
                );
              },
            ),
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: 100,
              interval: 20,
              majorTickLines: const MajorTickLines(size: 0),
              axisLine: const AxisLine(width: 0),
              labelStyle: labelSmall,
            ),
            legend: Legend(isVisible: false),
            series: <CartesianSeries<GroupBrushingStatsData, String>>[
              // 當前資料柱狀
              ColumnSeries<GroupBrushingStatsData, String>(
                dataSource: data,
                xValueMapper: xValueMapper,
                yValueMapper: (d, _) => d.value,
                color: AppColors.chartYellow,
                width: 0.4,
                borderRadius: BorderRadius.circular(4),
                onPointTap: (ChartPointDetails details) {
                  if (onTap != null) {
                    final idx = details.pointIndex!;
                    onTap!(data[idx], data[idx]);
                  }
                },
              ),
              // 基線資料折線
              LineSeries<GroupBrushingStatsData, String>(
                dataSource: data,
                xValueMapper: xValueMapper,
                yValueMapper: (d, _) => d.baseValue,
                color: Colors.red,
                width: 1,
                markerSettings: MarkerSettings(isVisible: false),
                onPointTap: (ChartPointDetails details) {
                  if (onTap != null) {
                    final idx = details.pointIndex!;
                    onTap!(data[idx], data[idx]);
                  }
                },
              ),
            ],
            tooltipBehavior: TooltipBehavior(enable: false),
          ),
        ),
        SizedBox(height: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Indicator(
              color: AppColors.chartYellow,
              text: getCurrentText(chartTimeStatus),
              isSquare: true,
            ),
            SizedBox(width: 8,),
            Indicator(
              color: Colors.red,
              text: getBaseLineText(chartTimeStatus),
              isSquare: true,
            )
          ],
        )
      ],
    );
  }
}

String getCurrentText(ChartTimeStatus status) {
  switch (status) {
    case ChartTimeStatus.day:
      return '本日';
    case ChartTimeStatus.month:
      return '本月';
    case ChartTimeStatus.year:
      return '今年';
    case ChartTimeStatus.hour:
      return '本小時';
  }
}

String getBaseLineText(ChartTimeStatus status) {
  switch (status) {
    case ChartTimeStatus.day:
      return '昨日';
    case ChartTimeStatus.month:
      return '上個月';
    case ChartTimeStatus.year:
      return '歷年';
    case ChartTimeStatus.hour:
      return '上個小時';
  }
}
