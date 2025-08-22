
import 'dart:math';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../data/models/response/group_top_user/group_top_user.dart';
import '../../../../domain/entity/rank_sort_criteria.dart';
import '../indicator/bar_chart_indicator.dart';

///
/// 一個水平顯示的群組排名長條圖元件。
///
/// 接收 List<GroupTopUser>，並能根據不同的排序標準動態調整。
///
class HorizontalRankChart extends StatefulWidget {
  final List<GroupTopUser> data;
  final RankSortCriteria rankSortCriteria;
  final void Function(GroupTopUser user)? onTap;
  final bool isChartClicked;

  const HorizontalRankChart({
    super.key,
    required this.data,
    required this.rankSortCriteria,
    this.onTap,
    required this.isChartClicked,
  });

  @override
  State<HorizontalRankChart> createState() => _HorizontalRankChartState();
}

class _HorizontalRankChartState extends State<HorizontalRankChart> {
  int? selectedIndex;

  @override
  void didUpdateWidget(covariant HorizontalRankChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 當外部點擊狀態取消時，重置內部的選取狀態
    if (!widget.isChartClicked) {
      setState(() {
        selectedIndex = null;
      });
    }
    // 如果排序標準改變，也重置選取狀態
    if (widget.rankSortCriteria != oldWidget.rankSortCriteria) {
      setState(() {
        selectedIndex = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 反轉資料順序，讓 rank 1 顯示在圖表最上方
    final reversedData = widget.data.reversed.toList();

    // 根據排序標準決定 Y 軸的設定和資料來源
    double? yAxisMaximum;
    double? yAxisInterval;
    String currentText = '';
    num Function(GroupTopUser, int) yValueMapper;

    if (widget.rankSortCriteria == RankSortCriteria.plaquePercent) {
      yAxisMaximum = 100;
      yAxisInterval = 20;
      currentText = AppStrings.averagePlaquePercentage;
      yValueMapper = (user, _) => user.avgPlaquePercent;
    } else {
      // 找出最大次數
      final maxCount = widget.data.isEmpty
          ? 0
          : widget.data.map((d) => d.recordCount).reduce((a, b) => max(a, b));

      yAxisMaximum = (maxCount * 1.2).ceilToDouble();
      // 計算一個合理的間隔，避免 Y 軸標籤過多
      if (yAxisMaximum > 0) {
        yAxisInterval = (yAxisMaximum / 5).ceilToDouble();
        if (yAxisInterval == 0) yAxisInterval = 1;
      } else {
        yAxisMaximum = 5; // 預設最大值
        yAxisInterval = 1;
      }

      currentText = AppStrings.averageNumberOfUsers;
      yValueMapper = (user, _) => user.recordCount;
    }

    return Column(
      children: [
        Expanded(
          child: SfCartesianChart(
            isTransposed: true,
            // 水平呈現
            // X 軸是分類
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(width: 0),
              majorTickLines: const MajorTickLines(size: 0),
              axisLine: const AxisLine(width: 0),
              labelStyle: labelSmall,
            ),

            // Y 軸是數值
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: yAxisMaximum,
              interval: yAxisInterval,
              majorTickLines: const MajorTickLines(size: 0),
              axisLine: const AxisLine(width: 0),
              labelStyle: labelSmall,
            ),

            series: <CartesianSeries>[
              ColumnSeries<GroupTopUser, String>(
                dataSource: reversedData,
                xValueMapper: (user, _) => user.userName,
                yValueMapper: yValueMapper,
                pointColorMapper: (user, i) {
                  final originalIndex = reversedData.length - 1 - i;
                  if (selectedIndex == null) {
                    return AppColors.chartPurple;
                  } else {
                    return originalIndex == selectedIndex
                        ? AppColors.chartPurple
                        : AppColors.disableGrey;
                  }
                },
                width: 0.2,
                borderRadius: BorderRadius.circular(4),
                onPointTap: (ChartPointDetails details) {
                  // 點擊後，我們要回傳原始 widget.data 中的 index
                  final originalIndex =
                      reversedData.length - 1 - details.pointIndex!;
                  setState(() {
                    selectedIndex = originalIndex;
                  });
                  if (widget.onTap != null) {
                    // 回傳 widget.data 中正確的 GroupTopUser 物件
                    widget.onTap!(widget.data[originalIndex]);
                  }
                },
              ),
            ],
            tooltipBehavior: TooltipBehavior(enable: false),
          ),
        ),
        const SizedBox(height: 4),
        // 圖表下方的指示器
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BarChartIndicator(
              color: AppColors.chartPurple,
              // 指示器文字也改為動態
              text: currentText,
              isSquare: true,
            ),
          ],
        )
      ],
    );
  }
}
