import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/constants/app_images.dart';
import 'package:dental_guard_flutter/core/widgets/image/app_icon.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/utils/dialog_manager.dart';
import '../../../application/teeth_record_usecases_provider.dart';
import '../../../domain/entity/chart_time_status.dart';
import '../../../domain/entity/rank_sort_criteria.dart';
import '../../../domain/entity/report_data.dart';
import 'chart/horizontal_bar_chart.dart';
import 'date_controller_widget.dart';
import 'info/rank_info_widget.dart';

class GroupRankBarChart extends HookConsumerWidget {
  final String groupId;
  final int refreshKey;

  const GroupRankBarChart({
    super.key,
    required this.groupId,
    required this.refreshKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Hooks for state management
    final selectTime = useState<DateTime>(DateTime.now());
    final chartTimeStatus = useState<ChartTimeStatus>(ChartTimeStatus.day);
    final selectedIndex = useState<int?>(null);
    final isChartClicked = useState<bool>(false);
    final rankSortCriteria =
        useState<RankSortCriteria>(RankSortCriteria.plaquePercent);

    // 監聽 groupRankProvider API 資料
    final rankingAsync = ref.watch(
      groupRankProvider((
        groupId: groupId,
        selectTime: selectTime.value,
        status: chartTimeStatus.value,
        sortBy: rankSortCriteria.value,
        limit: 5, // 顯示前 5 名
        refreshKey: refreshKey,
      )),
    );

    // 點擊背景可以關閉 ChartInfoWidget
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
          child: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  var value = await showChooseRankSortCriteriaDialog(context,
                      currentRankSortCriteria: rankSortCriteria.value);

                  if (value != null) {
                    rankSortCriteria.value = value;
                  }
                },
                child: Row(
                  children: [
                    AppText(
                      text: (rankSortCriteria.value ==
                              RankSortCriteria.plaquePercent)
                          ? AppStrings.avgPlaqueRanking
                          : AppStrings.avgNumberRanking,
                      textStyle: titleMedium,
                      color: AppColors.primaryBlack,
                    ),
                    SizedBox(width: 4,),
                    AppIcon(
                      icon: AppImages.filterIcon,
                      color: AppColors.primaryBlack,
                      size: 24,
                    )
                  ],
                ),
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
                  closeChartInfo();
                },
                onReportTap: () async {
                  // 確保 rankingAsync 已經載入完成且有資料
                  final data = rankingAsync.value;
                  if (data == null || data.isEmpty) {
                    // 可以在這裡加一個 Toast 提示使用者沒有資料
                    return;
                  }

                  final List<String> fieldTitle;
                  final List<ReportData> reportDataList;
                  final String dialogTitle;
                  dialogTitle = (rankSortCriteria.value ==
                      RankSortCriteria.plaquePercent)
                      ? AppStrings.avgPlaqueRanking
                      : AppStrings.avgNumberRanking;

                  if (rankSortCriteria.value == RankSortCriteria.plaquePercent) {
                    fieldTitle = [
                      AppStrings.rank, // e.g., "名次"
                      AppStrings.name, // e.g., "姓名"
                      AppStrings.averagePlaquePercentage,
                    ];
                    reportDataList = data.map((user) {
                      return ReportData(
                        index: user.rank.toString(), // 第一欄是名次
                        values: [
                          user.userName, // 第二欄是姓名
                          "${user.avgPlaquePercent.toStringAsFixed(1)}%", // 第三欄是數值
                        ],
                      );
                    }).toList();
                  } else { // RankSortCriteria.recordCount
                    fieldTitle = [
                      AppStrings.rank,
                      AppStrings.name,
                      AppStrings.averageNumberOfUsers,
                    ];
                    reportDataList = data.map((user) {
                      return ReportData(
                        index: user.rank.toString(),
                        values: [
                          user.userName,
                          user.recordCount.toString(),
                        ],
                      );
                    }).toList();
                  }

                  // 顯示報表對話框
                  await showReportDialog(
                    context,
                    fieldTitle: fieldTitle,
                    data: reportDataList,
                    title: dialogTitle,
                  );
                },
              ),
              const SizedBox(height: 12),
              // 圖表內容
              rankingAsync.when(
                loading: () => const SizedBox(
                  height: 300,
                  child: Center(
                      child: CircularProgressIndicator(
                    color: AppColors.chartYellow,
                  )),
                ),
                error: (err, stack) => SizedBox(
                  height: 300,
                  child: Center(child: AppText(text: '資料載入失敗：$err')),
                ),
                data: (data) {
                  if (data.isEmpty) {
                    return const SizedBox(
                      height: 300,
                      child: Center(child: AppText(text: '此區間無排名資料')),
                    );
                  }

                  return Column(
                    children: [
                      SizedBox(
                        height: data.length * 60.0, // 根據資料量動態調整高度
                        child: HorizontalRankChart(
                          data: data,
                          rankSortCriteria: rankSortCriteria.value,
                          isChartClicked: isChartClicked.value,
                          onTap: (user) {
                            final idx = data.indexOf(user);
                            selectedIndex.value = idx;
                            isChartClicked.value = true;
                          },
                        ),
                      ),
                      // 點擊時才顯示詳細資訊
                      if (selectedIndex.value != null &&
                          selectedIndex.value! < data.length)
                        RankInfoWidget(
                          groupTopUser: data[selectedIndex.value!],
                          criteria: rankSortCriteria.value,
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
