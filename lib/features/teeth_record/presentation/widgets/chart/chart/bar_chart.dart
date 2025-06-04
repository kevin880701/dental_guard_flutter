import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../data/models/response/group_brushing_stats/group_brushing_stats_data.dart';
import '../../../../domain/entity/chart_time_status.dart';
import '../indicator/bar_chart_Indicator.dart';

class BarChart extends StatefulWidget {
  final List<GroupBrushingStatsData> data;
  final ChartTimeStatus chartTimeStatus;
  final void Function(GroupBrushingStatsData data, GroupBrushingStatsData baseLine)? onTap;
  final bool isChartClicked;

  const BarChart({
    super.key,
    required this.data,
    required this.chartTimeStatus,
    this.onTap,
    required this.isChartClicked,
  });

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  int? selectedIndex;

  String _getXLabel(GroupBrushingStatsData d) {
    switch (widget.chartTimeStatus) {
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
  void didUpdateWidget(covariant BarChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 當外部 isChartClicked 為 false 時重設選取狀態
    if (!widget.isChartClicked) {
      setState(() {
        selectedIndex = null;
      });
    }
    // 若資料變化時，視需要重置狀態（這裡保留擴充，通常不用特別處理）
  }

  @override
  Widget build(BuildContext context) {
    // X 軸標籤
    final List<String> xLabels = widget.data.map(_getXLabel).toList();
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
                switch (widget.chartTimeStatus) {
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
                dataSource: widget.data,
                xValueMapper: xValueMapper,
                yValueMapper: (d, _) => d.value,
                // 動態判斷顏色
                pointColorMapper: (d, i) {
                  if (selectedIndex == null) {
                    return AppColors.chartYellow;
                  } else {
                    return i == selectedIndex
                        ? AppColors.chartYellow
                        : AppColors.disableGrey;
                  }
                },
                width: 0.4,
                borderRadius: BorderRadius.circular(4),
                onPointTap: (ChartPointDetails details) {
                  setState(() {
                    selectedIndex = details.pointIndex;
                  });
                  if (widget.onTap != null) {
                    final idx = details.pointIndex!;
                    widget.onTap!(widget.data[idx], widget.data[idx]);
                  }
                },
              ),
              // 基線資料折線
              LineSeries<GroupBrushingStatsData, String>(
                dataSource: widget.data,
                xValueMapper: xValueMapper,
                yValueMapper: (d, _) => d.baseValue,
                color: Colors.red,
                width: 1,
                markerSettings: MarkerSettings(isVisible: false),
                onPointTap: (ChartPointDetails details) {
                  if (widget.onTap != null) {
                    final idx = details.pointIndex!;
                    widget.onTap!(widget.data[idx], widget.data[idx]);
                  }
                },
              ),
            ],
            tooltipBehavior: TooltipBehavior(enable: false),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarChartIndicator(
              color: AppColors.chartYellow,
              text: getCurrentText(widget.chartTimeStatus),
              isSquare: true,
            ),
            const SizedBox(width: 8,),
            BarChartIndicator(
              color: Colors.red,
              text: getBaseLineText(widget.chartTimeStatus),
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
