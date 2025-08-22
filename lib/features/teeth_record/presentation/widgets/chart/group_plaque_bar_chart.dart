
import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/constants/app_images.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/features/teeth_record/presentation/widgets/chart/pieChart/baseline_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/dialog_manager.dart';
import '../../../application/teeth_record_usecases_provider.dart';
import '../../../data/models/response/brushing_stats/brushing_stats_data.dart';
import '../../../domain/entity/chart_time_status.dart';
import '../../../domain/entity/report_data.dart';
import 'chart/bar_chart.dart';
import 'date_controller_widget.dart';
import 'info/chart_info_widget.dart';

class GroupPlaqueBarChart extends HookConsumerWidget {
  final String groupId;
  final String title;
  final int refreshKey;

  const GroupPlaqueBarChart({
    super.key,
    required this.groupId,
    required this.title,
    required this.refreshKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectTime = useState<DateTime>(DateTime.now());
    final chartTimeStatus = useState<ChartTimeStatus>(ChartTimeStatus.hour);
    final selectedIndex = useState<int?>(null);
    final isChartClicked = useState<bool>(false);

    // 監聽 API 資料（根據時間和型態切換）
    final statsAsync = ref.watch(
      groupBrushingStatsProvider((
      groupId: groupId,
      selectTime: selectTime.value,
      status: chartTimeStatus.value,
      refreshKey: refreshKey,
      )),
    );

    // 點背景可以關閉 ChartInfoWidget
    void closeChartInfo() {
      selectedIndex.value = null;
      isChartClicked.value = false;
    }

    return GestureDetector(
      onTap: closeChartInfo,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: statsAsync.when(
            loading: () => const SizedBox(
              height: 300,
              child: Center(child: CircularProgressIndicator(color: AppColors.chartYellow,)),
            ),
            error: (err, stack) => SizedBox(
              height: 300,
              child: Center(child: AppText(text: '資料載入失敗：$err')),
            ),
            data: (data) {
              // 最新資料
              final double percent =
              (data.isNotEmpty) ? (data.last.avgPlaquePercent / 100).clamp(0.0, 1.0) : 0.0;
              // 最新基線，直接從最後一筆資料取得
              final double? baseValue =
              (data.isNotEmpty) ? data.last.baselineAvgPlaquePercent : null;

              // onTap 更新被點擊的 index 和點擊狀態
              void handleBarTap(
                  BrushingStatsData d, BrushingStatsData baseLine) {
                final idx = data.indexOf(d);
                selectedIndex.value = idx;
                isChartClicked.value = true;
              }

              return Column(
                children: [
                  Row(
                    children: [
                      AppText(
                        text: title,
                        textStyle: titleMedium,
                        color: AppColors.primaryBlack,
                      ),
                      const Spacer(),
                      BaselinePieChart(
                        chartColor: [
                          AppColors.chartYellow,
                          AppColors.chartYellow.withAlpha(230),
                          AppColors.chartYellow.withAlpha(205),
                          AppColors.chartYellow.withAlpha(153),
                          AppColors.chartYellow.withAlpha(128),
                        ],
                        value: percent * 100,
                        icon: AppImages.teethIcon,
                        isGradient: true,
                        baseValue: baseValue,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // 日期選擇與左右鍵
                  DateControllerWidget(
                    selectTime: selectTime.value,
                    currentTimeStatus: chartTimeStatus.value,
                    onDateChange: (newDate, status) {
                      selectTime.value = newDate;
                      if (status != null) {
                        chartTimeStatus.value = status;
                      }
                    },

                    onReportTap: () async {
                      List<String> fieldTitle = [
                        AppStrings.date,
                        chartTimeStatus.value.currentText,
                        chartTimeStatus.value.baseLineText,
                      ];
                      List<ReportData> reportDataList = data.map((d) {
                        final time = chartTimeStatus.value.formatTime(d.time);
                        return ReportData(
                          index: time,
                          values: [
                            "${d.avgPlaquePercent.toString()}%",
                            "${d.baselineAvgPlaquePercent.toString()}%",
                          ],
                        );
                      }).toList();

                      await showReportDialog(
                        context,
                        fieldTitle: fieldTitle,
                        data: reportDataList,
                        title: AppStrings.dentalPlaquePercentageStatistics,
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  // 點擊圖表時帶入 isChartClicked, selectedIndex
                  BarChart(
                    data: data,
                    chartTimeStatus: chartTimeStatus.value,
                    isChartClicked: isChartClicked.value,
                    onTap: (d, baseLine) => handleBarTap(d, baseLine),
                  ),
                  // 點擊時才顯示
                  if (selectedIndex.value != null &&
                      selectedIndex.value! < data.length)
                    ChartInfoWidget(
                      data: data[selectedIndex.value!],
                      chartTimeStatus: chartTimeStatus.value,
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
