import 'dart:convert';
import 'dart:io';

import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/core/widgets/button/app_button.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:dental_guard_flutter/features/teeth_record/presentation/widgets/chart/group_rank_bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/utils/app_toast.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/dialog/window/download_report_dialog.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../../../organization/data/models/response/group_with_user_type/group_with_user_type_data.dart';
import '../../../teeth_record/application/teeth_record_usecases_provider.dart';
import '../../../teeth_record/data/models/response/groups_brushing_records/group_brushing_records_data.dart';
import '../../../teeth_record/presentation/widgets/chart/group_plaque_bar_chart.dart';
import '../../../teeth_record/presentation/widgets/chart/group_use_count_line_chart.dart';
import '../provider/group_main_controller.dart';

class GroupBrushingChartScreen extends HookConsumerWidget {
  final GroupWithUserTypeData group;

  const GroupBrushingChartScreen({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final groupMainState = ref.watch(groupMainProvider);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: RefreshIndicator(
        onRefresh: () async {
          ref.read(groupMainProvider.notifier).refresh();
        },
        child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                AppButton(
                  text: AppStrings.reportDownload,
                  onPressed: () async {
                    showDownloadReportDialog(
                      context,
                      onSubmit: ({
                        required DateTime startTime,
                        required DateTime endTime,
                        required ExportFormat format,
                      }) async {
                        final String timeZone = await FlutterTimezone.getLocalTimezone();
                        final useCase = ref.read(getGroupsBrushingRecordsUseCaseProvider);
                        GroupsBrushingRecordsResponse? result = await useCase(
                          groupIds: [group.id],
                          startDate: startTime.toIsoDateTime(),
                          endDate: endTime.toIsoDateTime(),
                          timeZone: timeZone,
                        );

                        if (result != null && result.records.isNotEmpty) {
                          final users = result.records[0].users;
                          if (users.isEmpty) {
                            AppToast.showToast(message: "沒有使用者資料");
                            return;
                          }

                          // 展開所有 user 的 brushingRecords，並且帶上 user info
                          final allRecords = <Map<String, dynamic>>[];
                          for (final user in users) {
                            for (final record in user.brushingRecords) {
                              final scoreDisplay = (record.analyzeResult.isSuccess == 0)
                                  ? '偵測失敗'
                                  : record.analyzeResult.score.toString();

                              allRecords.add({
                                'userName': user.user.name ?? '',
                                'userNumber': user.user.number ?? '',
                                'remark': record.remarks ?? '',
                                'createdAt': record.createdAt,
                                'score': scoreDisplay,
                              });
                            }
                          }

                          // createdAt 非遞增排序
                          allRecords.sort((a, b) => (a['createdAt'] as DateTime).compareTo(b['createdAt'] as DateTime));

                          // 根據選擇的格式轉換 CSV
                          String toCsv(List<Map<String, dynamic>> records, ExportFormat format) {
                            final header = ['使用者名稱', '代號', '備註', '建立時間', '牙菌斑百分比'];
                            final rows = [header.join(',')];
                            for (final r in records) {
                              // 處理可能包含逗號的數據
                              final csvRow = [
                                '"${r['userName']}"',
                                '"${r['userNumber']}"',
                                '"${r['remark']}"',
                                '"${(r['createdAt'] as DateTime).toIso8601String()}"',
                                '"${r['score']}"',
                              ].join(',');
                              rows.add(csvRow);
                            }

                            final csvContent = rows.join('\n');

                            // 根據格式添加適當的標記
                            switch (format) {
                              case ExportFormat.utf8Bom:
                                return '\uFEFF$csvContent'; // UTF-8 BOM
                              case ExportFormat.utf8:
                              case ExportFormat.ansi:
                              default:
                                return csvContent;
                            }
                          }

                          // 存檔
                          final tempDir = await getTemporaryDirectory();
                          final file = File('${tempDir.path}/brushing_records.csv');

                          final csvContent = toCsv(allRecords, format);

                          // 根據格式選擇編碼方式
                          switch (format) {
                            case ExportFormat.ansi:
                            // ANSI (實際上是系統默認編碼，通常是 UTF-8)
                            // 如果真的需要 ANSI，需要額外的編碼轉換
                              await file.writeAsString(csvContent);
                              break;
                            case ExportFormat.utf8:
                            case ExportFormat.utf8Bom:
                            default:
                              await file.writeAsString(csvContent, encoding: utf8);
                              break;
                          }

                          // 分享
                          final params = ShareParams(
                            files: [XFile(file.path)],
                            text: '匯出潔牙紀錄',
                            subject: '潔牙紀錄報表 (${format.displayName})',
                          );
                          await SharePlus.instance.share(params);

                          AppToast.showToast(message: AppStrings.createSuccess);
                        } else {
                          AppToast.showToast(message: "${AppStrings.downloadFailed}: ${AppStrings.searchFailed}");
                        }
                      },
                    );
                  },
                  backgroundColor: AppColors.primaryBlack,
                  fontColor: Colors.white,
                  textStyle: labelMedium,
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                  leftIcon: AppIcon(
                    icon: AppImages.fileDownloadIcon,
                    color: Colors.white,
                    size: 16,
                    padding: 0,
                  ),
                  iconSpacing: 4,
                ),
                GroupPlaqueBarChart(
                  groupId: group.id,
                  title: AppStrings.averagePlaquePercentage,
                  refreshKey: groupMainState.refreshKey,
                ),
                GroupUseCountLineChart(
                  groupId: group.id,
                  title: AppStrings.averageNumberOfUsers,
                  refreshKey: groupMainState.refreshKey
                  ,
                ),
                GroupRankBarChart(
                  groupId: group.id,
                  refreshKey: groupMainState.refreshKey
                ),
                SizedBox(height: 96),
              ],
            ),
          ),
        ),
      ),),
    );
  }
}
