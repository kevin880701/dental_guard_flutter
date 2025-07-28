import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/text/app_text.dart';
import '../../../../../../core/widgets/text/text_theme.dart';
import '../../../../data/models/response/brushing_stats/brushing_stats_data.dart';
import '../../../../domain/entity/chart_time_status.dart';
import '../indicator/smooth_line_Indicator.dart';

class SmoothLineChart extends StatefulWidget {
  final List<BrushingStatsData> data;
  final ChartTimeStatus chartTimeStatus;
  final void Function(List<BrushingStatsData?> data)? onTap;
  final bool isChartClicked;

  const SmoothLineChart({
    super.key,
    required this.data,
    required this.chartTimeStatus,
    this.onTap,
    required this.isChartClicked,
  });

  @override
  State<SmoothLineChart> createState() => _SmoothLineChartState();
}

class _SmoothLineChartState extends State<SmoothLineChart> {
  int touchedIndex = -1;

  int rangeStart = 0;
  late int rangeEnd = 0;


  String _getXLabel(DateTime t, ChartTimeStatus status) {
    switch (status) {
      case ChartTimeStatus.minute:
        return t.minute.toString().padLeft(2, '0');
      case ChartTimeStatus.hour:
        return t.hour.toString().padLeft(2, '0');
      case ChartTimeStatus.day:
        return t.day.toString().padLeft(2, '0');
      case ChartTimeStatus.month:
        return t.month.toString().padLeft(2, '0');
      case ChartTimeStatus.quarter:
      case ChartTimeStatus.quarterHour:
      default:
        return '';
    }
  }

  @override
  void initState() {
    super.initState();
    // 注意 widget.data 可能還沒資料，這邊要保護
    rangeEnd = (widget.data.isNotEmpty) ? widget.data.length - 1 : 0;
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    final double bottomTitleHeight = 28.0;
    if (data.isEmpty) {
      return const Center(child: Text('無資料'));
    }

    List<Color> gradientColors = [
      Color(0xFF9EBCE8),
      AppColors.white,
    ];

    List<Color> grayGradientColors = [
      Color(0xFFE3E3E3),
      AppColors.white,
    ];

    final xLabels = data
        .map((d) => _getXLabel(d.time, widget.chartTimeStatus))
        .toList();

    // 取 count 跟 baseCount 最大
    final maxYData = data
        .map((d) => d.recordCount > d.baselineRecordCount ? d.recordCount : d.baselineRecordCount)
        .fold<int>(0, (p, c) => c > p ? c : p)
        .toDouble();

    final maxY = maxYData == 0 ? 10.0 : (maxYData * 1.2).toDouble();

    final List<FlSpot> dataSpots = [
      for (int i = 0; i < data.length; i++)
        FlSpot(i.toDouble(), data[i].recordCount.toDouble()),
    ];

    final List<FlSpot> dataBaseSpots = [
      for (int i = 0; i < data.length; i++)
        FlSpot(i.toDouble(), data[i].baselineRecordCount.toDouble()),
    ];

    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2.2,
          child: LineChart(
            LineChartData(
              minY: 0,
              maxY: maxY,
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: AppColors.borderGrey, width: 1),
              ),
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: true,
                drawVerticalLine: false,
                horizontalInterval: maxY / 5,
                getDrawingHorizontalLine: (value) {
                  return const FlLine(
                    color: AppColors.borderGrey,
                    strokeWidth: 1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return const FlLine(
                    color: AppColors.borderGrey,
                    strokeWidth: 1,
                  );
                },
              ),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      int idx = value.toInt();
                      if (idx < 0 || idx >= xLabels.length)
                        return const SizedBox.shrink();

                      bool shouldShow = false;
                      final lastIdx = xLabels.length - 1;

                      switch (widget.chartTimeStatus) {
                        case ChartTimeStatus.minute:
                          // 60 筆，只顯示每 15 間距
                          shouldShow = idx % 15 == 0 || idx == lastIdx;
                          break;
                        case ChartTimeStatus.hour:
                          // 24 筆，只顯示每 4 間距
                          shouldShow = idx % 4 == 0 || idx == lastIdx;
                          break;
                        case ChartTimeStatus.day:
                          // 28~31 筆，1~25只顯示每5，最後一天一定顯示
                          shouldShow =
                              (idx % 5 == 0 && idx <= 25) || idx == lastIdx;
                          break;
                        case ChartTimeStatus.month:
                          // 12 筆，每個都顯示
                          shouldShow = true;
                          break;
                        case ChartTimeStatus.quarter:
                        case ChartTimeStatus.quarterHour:
                        default:
                          shouldShow = true;
                      }

                      if (!shouldShow) return const SizedBox.shrink();

                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: AppText(
                          text: xLabels[idx],
                          textStyle: labelSmall,
                        ),
                      );
                    },
                    reservedSize: bottomTitleHeight,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: maxY / 5,
                    reservedSize: 36,
                    getTitlesWidget: (double value, TitleMeta meta) {
                      return AppText(
                        text: value.toInt().toString(),
                        textStyle: labelSmall,
                      );
                    },
                  ),
                ),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              lineBarsData: [
                LineChartBarData(
                  isCurved: false,
                  color: AppColors.blue,
                  barWidth: 2,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: gradientColors.map((color) => color).toList(),
                    ),
                    spotsLine: BarAreaSpotsLine(
                      show: false,
                    ),
                  ),
                  spots: dataSpots,
                ),

                LineChartBarData(
                  spots: dataSpots.sublist(0, rangeStart),
                  isCurved: false,
                  color: AppColors.borderGrey,
                  barWidth: 2,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: grayGradientColors.map((color) => color).toList(),
                    ),
                    spotsLine: BarAreaSpotsLine(
                      show: false,
                      flLineStyle: FlLine(
                        color: AppColors.red,
                        strokeWidth: 2,
                      ),
                      checkToShowSpotLine: (spot) {
                        if (spot.x == 0 || spot.x == 6) {
                          return false;
                        }
                        return true;
                      },
                    ),
                  ),
                ),
                LineChartBarData(
                  spots: dataSpots.sublist(rangeEnd, dataSpots.length),
                  isCurved: false,
                  color: AppColors.borderGrey,
                  barWidth: 2,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: false,
                    checkToShowDot: (spot, barData) {
                      return spot.x != 0 && spot.x != 6;
                    },
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: grayGradientColors.map((color) => color).toList(),
                    ),
                    spotsLine: BarAreaSpotsLine(
                      show: false,
                    ),
                  ),
                ),
                LineChartBarData(
                  spots: dataBaseSpots,
                  isCurved: false,
                  color: AppColors.red.withValues(alpha: 0.2),
                  barWidth: 2,
                  isStrokeCapRound: true,
                  dotData: const FlDotData(
                    show: false,
                  ),
                ),
              ],
              lineTouchData: LineTouchData(
                enabled: true,
                handleBuiltInTouches: false,
                touchCallback: (FlTouchEvent event, LineTouchResponse? response) {
                  if (response == null || response.lineBarSpots == null) {
                    return;
                  }
                  if (event is FlTapDownEvent) {
                    if (!event.isInterestedForInteractions ||
                        response == null ||
                        response.lineBarSpots == null) {
                      setState(() {
                        widget.onTap?.call([]);
                        touchedIndex = -1;
                        rangeStart = data.length - 1;
                        rangeEnd = 0;
                      });
                      return;
                    }

                    setState(() {
                      touchedIndex = response.lineBarSpots!.first.spotIndex;
                      getSpotsAroundTouchedIndex(dataSpots, touchedIndex);
                      final selected =
                      widget.data.sublist(rangeStart, rangeEnd + 1);
                      widget.onTap?.call(selected);
                    });
                  }
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothLineChartIndicator(
              color: AppColors.blue,
              text: widget.chartTimeStatus.currentText,
              isSquare: true,
            ),
            SizedBox(width: 8,),
            SmoothLineChartIndicator(
              color: Colors.red,
              text: widget.chartTimeStatus.baseLineText,
              isSquare: true,
            )
          ],
        )
      ],
    );
  }

  void getSpotsAroundTouchedIndex(List<FlSpot> data, int touchedIndex) {
    if (data.isEmpty) return;
    if (touchedIndex == 0) {
      rangeStart = 0;
      rangeEnd = 2;
    } else if (touchedIndex == data.length - 1) {
      rangeStart = data.length - 3;
      rangeEnd = data.length - 1;
    } else {
      rangeStart = touchedIndex - 1;
      rangeEnd = touchedIndex + 1;
    }
  }

  @override
  void didUpdateWidget(covariant SmoothLineChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 如果外部傳來 isChartClicked==false，則重設選取狀態
    if (!widget.isChartClicked) {
      setState(() {
        touchedIndex = -1;
        rangeStart = 0;
        rangeEnd = widget.data.isNotEmpty ? widget.data.length - 1 : 0;
      });
    }
    // 如果資料有變也一併修正 rangeEnd
    if (widget.data.length != oldWidget.data.length) {
      setState(() {
        rangeEnd = (widget.data.isNotEmpty) ? widget.data.length - 1 : 0;
      });
    }
  }
}
