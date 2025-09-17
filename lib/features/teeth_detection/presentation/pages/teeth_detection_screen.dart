import 'package:dental_guard_flutter/core/providers/page_provider.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/providers/cancellable_operation.dart';
import '../../../../core/providers/loading_provider.dart';
import '../../../../core/utils/app_log.dart';
import '../../../../core/widgets/button/app_button.dart';
import '../../../../core/widgets/image/file_image_widget.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../analyze/application/analyze_usecases_provider.dart';
import '../../../group/presentation/provider/group_main_controller.dart';
import '../../../member/presentation/providers/member_main_controller.dart';
import '../../../teeth_record/application/teeth_record_usecases_provider.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';
import '../provider/teeth_detection_controller.dart';
import '../widgets/image_selector.dart';
import '../widgets/teeth_image_view.dart';

@RoutePage()
class TeethDetectionScreen extends HookConsumerWidget {
  const TeethDetectionScreen(
      {super.key, required this.userId, this.brushingRecordData});

  final String userId;
  final BrushingRecordData? brushingRecordData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teethDetectionControllerNotifier =
        ref.read(teethDetectionControllerProvider.notifier);
    final teethDetectionControllerState =
        ref.watch(teethDetectionControllerProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        teethDetectionControllerNotifier.initialize(
          userId: userId,
          record: brushingRecordData,
          analyze: brushingRecordData?.analyzeResult,
        );
      });
      return null;
    }, []);

    // 檢查是否應該顯示旋轉按鈕
    final shouldShowRotateButton =
        teethDetectionControllerState.tempImage != null &&
            teethDetectionControllerState.analyzeResult == null;

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleBar(
              title: AppStrings.imageDetection,
              isBack: true,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.borderGrey,
                    width: 2,
                  ),
                ),
                child: Stack(children: [Positioned.fill(child: (teethDetectionControllerState.analyzeResult !=
                    null) // 判斷是否是呼叫紀錄
                    ? TeethImageView(
                  analyzeResult:
                  teethDetectionControllerState.analyzeResult,
                )
                    : (teethDetectionControllerState.tempImage !=
                    null) // 判斷是否有選擇照片或拍照
                    ? FileImageWidget(
                  filePath:
                  teethDetectionControllerState.tempImage!.path,
                )
                    : ImageSelector(
                  onImageSelected: (selectedImage) {
                    teethDetectionControllerNotifier
                        .setTempImage(selectedImage);
                  },
                ),),
                  // 旋轉按鈕
                  if (shouldShowRotateButton)
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.rotate_right,
                            color: Colors.white,
                            size: 24,
                          ),
                          onPressed: () {
                            teethDetectionControllerNotifier.rotateImage();
                          },
                          tooltip: "旋轉圖片",
                        ),
                      ),
                    ),],)
              ),
            ),
            if (brushingRecordData == null) ...[
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppButton(
                      text: AppStrings.clearImage,
                      backgroundColor:
                          (teethDetectionControllerState.tempImage != null ||
                                  teethDetectionControllerState
                                          .brushingRecord !=
                                      null)
                              ? AppColors.red
                              : AppColors.disableGrey,
                      fontColor: AppColors.white,
                      onPressed: (teethDetectionControllerState.tempImage !=
                                  null ||
                              teethDetectionControllerState.brushingRecord !=
                                  null)
                          ? () async {
                              teethDetectionControllerNotifier.clear();
                            }
                          : null,
                    ),
                    AppButton(
                        text: AppStrings.imageDetection,
                        backgroundColor:
                            (teethDetectionControllerState.tempImage != null)
                                ? AppColors.primaryBlack
                                : AppColors.disableGrey,
                        fontColor: AppColors.white,
                        onPressed: () async {
                          try {
                            final cancelToken = ref
                                .read(loadingNotifierProvider.notifier)
                                .showLoading(cancellable: true);

                            final analyzeResult =
                                await cancelToken.run(() async {
                              return await ref.read(
                                      analyzeTeethImageUseCaseUseCaseProvider)(
                                  teethDetectionControllerState.tempImage!);
                            });

                            // 檢查操作是否被取消
                            if (analyzeResult == null) {
                              return; // 操作被取消
                            }

                            // 處理結果
                            teethDetectionControllerNotifier
                                .setAnalyzeResult(analyzeResult);
                            if (analyzeResult.isSuccess != 1) {
                              ref
                                  .read(pageNotifierProvider.notifier)
                                  .showToastMessage(
                                      message:
                                          "${AppStrings.detectionFailed}：${analyzeResult.mark}");
                            }
                          } catch (e) {
                            if (e is! OperationCancelledException) {
                              ref
                                  .read(pageNotifierProvider.notifier)
                                  .showToastMessage(
                                      message: AppStrings.detectionFailed);
                              AppLog.e("ERROR:$e");
                            }
                          }
                          ref
                              .read(loadingNotifierProvider.notifier)
                              .hideLoading();
                        }),
                    AppButton(
                        text: AppStrings.imageStorage,
                        backgroundColor:
                            (teethDetectionControllerState.tempImage != null) &&
                                    (teethDetectionControllerState
                                            .analyzeResult !=
                                        null)
                                ? AppColors.blue
                                : AppColors.disableGrey,
                        fontColor: AppColors.white,
                        onPressed: (teethDetectionControllerState.tempImage !=
                                    null) &&
                                (teethDetectionControllerState.analyzeResult !=
                                    null)
                            ? () async {
                                try {
                                  ref
                                      .read(loadingNotifierProvider.notifier)
                                      .showLoading();
                                  if (teethDetectionControllerState.tempImage !=
                                      null) {
                                    final result = await ref.read(
                                            createBrushingRecordUseCaseProvider)(
                                        userId: userId,
                                        name: DateTime.now().formatDateTime(),
                                        analyzeResultId:
                                            teethDetectionControllerState
                                                .analyzeResult?.id);

                                    if (result != null) {
                                      final controller = ref.read(
                                          memberMainControllerProvider
                                              .notifier);
                                      controller
                                          .appendBrushingRecords([result]);
                                      ref
                                          .read(groupMainProvider.notifier)
                                          .refresh();
                                      context.pop();
                                      AppToast.showToast(
                                          message: AppStrings.storageSuccess);
                                    } else {
                                      AppToast.showToast(
                                          message: AppStrings.storageFailed);
                                    }
                                  } else {
                                    AppToast.showToast(
                                        message: AppStrings.photosFailed);
                                  }
                                } catch (e) {
                                  ref
                                      .read(loadingNotifierProvider.notifier)
                                      .hideLoading();
                                  ref
                                      .read(pageNotifierProvider.notifier)
                                      .showToastMessage(
                                          message: AppStrings.detectionFailed);
                                  AppLog.e("ERROR:$e");
                                }
                                ref
                                    .read(loadingNotifierProvider.notifier)
                                    .hideLoading();
                              }
                            : null),
                  ],
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}
