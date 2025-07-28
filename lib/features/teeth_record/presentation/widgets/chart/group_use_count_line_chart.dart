import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/features/teeth_record/presentation/widgets/chart/pieChart/BaselinePieChart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/utils/dialog_manager.dart';
import '../../../../../core/widgets/text/text_theme.dart';
import '../../../application/teeth_record_usecases_provider.dart';
import '../../../domain/entity/chart_time_status.dart';
import '../../../domain/entity/report_data.dart';
import 'chart/smooth_line_chart.dart';
import 'date_controller_widget.dart';
import 'info/smooth_line_info_widget.dart';

class GroupUseCountLineChart extends HookConsumerWidget {
  final String groupId;
  final String title;
  final int refreshKey;

  const GroupUseCountLineChart({
    super.key,
    required this.groupId,
    required this.title,
    required this.refreshKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectTime = useState<DateTime>(DateTime.now());
    final chartTimeStatus = useState<ChartTimeStatus>(ChartTimeStatus.hour);
    // 用 state 儲存「被選到的那一段資料」(List)
    final selectedData = useState<List<dynamic>>(<dynamic>[]);
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

    // 點背景可以關閉 info
    void closeChartInfo() {
      selectedData.value = [];
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
              child: Center(child: CircularProgressIndicator(color: AppColors.blue)),
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
              final double? baseValue = (data.isNotEmpty) ? data.last.baselineAvgPlaquePercent : null;

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
                          AppColors.blue,
                          AppColors.blue.withAlpha(230),
                          AppColors.blue.withAlpha(205),
                          AppColors.blue.withAlpha(153),
                          AppColors.blue.withAlpha(128),
                        ],
                        value: percent * 100,
                        icon: AppImages.listIcon,
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
                      selectedData.value = [];
                      isChartClicked.value = false;
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
                            d.recordCount.toString(),
                            d.baselineRecordCount.toString(),
                          ],
                        );
                      }).toList();

                      await showReportDialog(
                        context,
                        fieldTitle: fieldTitle,
                        data: reportDataList,
                        title: AppStrings.userStatistics,
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  // 點擊圖表時會啟動 isChartClicked，onTap 設定資料清單
                  SmoothLineChart(
                    data: data,
                    chartTimeStatus: chartTimeStatus.value,
                    isChartClicked: isChartClicked.value,
                    onTap: (list) {
                      if (list.isNotEmpty) {
                        selectedData.value = list;
                        isChartClicked.value = true;
                      } else {
                        selectedData.value = [];
                        isChartClicked.value = false;
                      }
                    },
                  ),
                  // 有被點擊才顯示
                  if (selectedData.value.isNotEmpty)
                    SmoothLineInfoWidget(
                      data: selectedData.value.cast(), // List<GroupBrushingStatsData?>
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
