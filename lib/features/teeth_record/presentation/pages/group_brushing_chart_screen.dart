import 'dart:io';

import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/core/widgets/button/app_button.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_toast.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../organization/data/models/response/group/group_data.dart';
import '../../application/teeth_record_usecases_provider.dart';
import '../../data/models/response/brushing_record/brushing_record_data.dart';
import '../../data/models/response/groups_brushing_records/group_brushing_records_data.dart';
import '../widgets/chart/group_brushing_bar_chart.dart';
import '../widgets/chart/group_use_count_line_chart.dart';

class GroupBrushingChartScreen extends HookConsumerWidget {
  final GroupData group;

  const GroupBrushingChartScreen({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: Container(
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
                      }) async {

                        final useCase = ref.read(getGroupsBrushingRecordsUseCaseProvider);
                        List<GroupBrushingRecordsData> result = await useCase(
                          groupIds: [group.id],
                          startDate:  startTime.toIsoDateTime(),
                          endDate: endTime.toIsoDateTime(),
                        );
                        if (result.isNotEmpty) {
                          final users = result[0].users;
                          if (users.isEmpty) {
                            AppToast.showToast(message: "沒有使用者資料");
                            return;
                          }

                          // 展開所有 user 的 brushingRecords，並且帶上 user info
                          final allRecords = <Map<String, dynamic>>[];
                          for (final user in users) {
                            for (final record in user.brushingRecords) {
                              // 判斷偵測成功
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

                          // createdAt 遞增排序
                          allRecords.sort((a, b) => (a['createdAt'] as DateTime).compareTo(b['createdAt'] as DateTime));

                          // 轉成 CSV
                          String toCsv(List<Map<String, dynamic>> records) {
                            final header = ['使用者名稱', '代號', '備註', '建立時間', '牙菌斑百分比'];
                            final rows = [header.join(',')];
                            for (final r in records) {
                              rows.add([
                                r['userName'],
                                r['userNumber'],
                                r['remark'],
                                (r['createdAt'] as DateTime).toIso8601String(),
                                r['score'].toString(),
                              ].join(','));
                            }
                            return rows.join('\n');
                          }

                          // 存檔
                          final tempDir = await getTemporaryDirectory();
                          final file = File('${tempDir.path}/brushing_records.csv');
                          await file.writeAsString(toCsv(allRecords));

                          // 分享
                          final params = ShareParams(
                            files: [XFile(file.path)],
                            text: '匯出潔牙紀錄',
                            subject: '潔牙紀錄報表',
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
                GroupBrushingBarChart(
                  title: AppStrings.averagePlaquePercentage,
                ),
                GroupUseCountLineChart(
                  title: AppStrings.averageNumberOfUsers,
                ),
                SizedBox(height: 96),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
