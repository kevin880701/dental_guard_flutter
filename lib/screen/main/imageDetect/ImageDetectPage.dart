import 'dart:io';

import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/extensions/PageExtensions.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/detectImage/DetectResultsPage.dart';
import 'package:dental_guard_flutter/utils/DialogManager.dart';
import 'package:dental_guard_flutter/utils/FileManager.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/RoundTabBarWidget.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

import 'originalImage/OriginalImagePage.dart';

@RoutePage()
class ImageDetectPage extends HookConsumerWidget {
  const ImageDetectPage({super.key, required this.studentId, this.teethRecord});

  final int studentId;
  final TeethRecordsResponse? teethRecord;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageDetectNotifier = ref.read(imageDetectProvider.notifier);
    final imageDetectState = ref.watch(imageDetectProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        // 判断 teethRecord 是否不为 null
        if (teethRecord != null) {
          // 将 TeethRecordsResponse 转换为 AnalyzeTeethResponse
          final analyzeTeethResponse = AnalyzeTeethResponse(
            apiStatus: 1, // 假设 API status 为 1（可以根据需要调整）
            percentagePlaqueTotal: teethRecord!.dentalPlaqueCount,
            teethRangePath: 'teeth_range/${teethRecord!.imagesPath}',
            teethRangeDetectPath:
                'teeth_range_detect/${teethRecord!.imagesPath}', // 如果有对应的路径信息，可以在这里填入
          );

          // 更新 imageDetectState
          final imageDetectNotifier = ref.read(imageDetectProvider.notifier);
          imageDetectNotifier.state = imageDetectNotifier.state.copyWith(
            analyzeTeethResponse: analyzeTeethResponse,
          );
        }
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitleBar(
              title: AppTexts.imageDetection,
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
              child: (imageDetectState.originalImage != null ||
                      imageDetectState.analyzeTeethResponse?.teethRangePath !=
                          null)
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: (imageDetectState
                                  .analyzeTeethResponse?.teethRangePath ==
                              null)
                          ? Image.file(
                              File(imageDetectState.originalImage!.path),
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return _buildImageErrorWidget();
                              },
                            )
                          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                netImage(
                                    'https://dental-service.jieniguicare.org/api/analysis/${imageDetectState.analyzeTeethResponse?.teethRangePath}'),
                                netImage(
                                    'https://dental-service.jieniguicare.org/api/analysis/${imageDetectState.analyzeTeethResponse?.teethRangeDetectPath}'),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  color: getPlaqueColor(imageDetectState
                                      .analyzeTeethResponse
                                      ?.percentagePlaqueTotal),
                                  child: customText(
                                    getPlaqueMessage(imageDetectState
                                        .analyzeTeethResponse
                                        ?.percentagePlaqueTotal),color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                    )
                  : GestureDetector(
                      onTap: () async {
                        showChooseImageDialog(context,
                            onChooseImageTap: () async {
                          await pickMedia(
                            context: context,
                            sizeLimitMB: 50,
                            fileLimit: 1,
                            fileType: FileType.image,
                          ).then((selectedFiles) {
                            if (selectedFiles.isNotEmpty) {
                              imageDetectNotifier.updateImage(
                                  originalImage: selectedFiles[0]);
                            }
                          });
                        }, onCapturePhotoTap: () async {
                          AutoRouter.of(context).push(CameraRoute());
                        });
                      },
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: customText(
                          AppTexts.selectImage,
                        ),
                      ),
                    ),
            )),
            if (teethRecord == null) ...[
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    roundedButton(
                      text: AppTexts.clearImage,
                      bgColor: (imageDetectState.originalImage != null ||
                              imageDetectState.analyzeTeethResponse != null)
                          ? AppColors.red
                          : AppColors.disableGrey,
                      fontColor: AppColors.white,
                      onTap: (imageDetectState.originalImage != null ||
                              imageDetectState.analyzeTeethResponse != null)
                          ? () async {
                              imageDetectNotifier.clearImage().then((_) {});
                            }
                          : null,
                    ),
                    roundedButton(
                        text: AppTexts.imageDetection,
                        bgColor: (imageDetectState.originalImage != null)
                            ? AppColors.primaryBlack
                            : AppColors.disableGrey,
                        fontColor: AppColors.white,
                        onTap: () async {
                          imageDetectNotifier
                              .analyzeTeeth(
                                  originalImage:
                                      imageDetectState.originalImage!)
                              .then((response) {
                            if (response == null) {
                              ref.showError('牙菌斑偵測失敗');
                            }
                          });
                        }),
                    roundedButton(
                        text: AppTexts.imageStorage,
                        bgColor: (imageDetectState.originalImage != null) &&
                                (imageDetectState.analyzeTeethResponse != null)
                            ? AppColors.blue
                            : AppColors.disableGrey,
                        fontColor: AppColors.white,
                        onTap: (imageDetectState.originalImage != null) &&
                                (imageDetectState.analyzeTeethResponse != null)
                            ? () {
                                imageDetectNotifier
                                    .createTeethRecords(
                                        studentId: studentId,
                                        imagesPath: extractDateTime(
                                            imageDetectState
                                                .analyzeTeethResponse!
                                                .teethRangeDetectPath),
                                        dentalPlaqueCount: imageDetectState
                                            .analyzeTeethResponse!
                                            .percentagePlaqueTotal)
                                    .then((response) {
                                  if (response != null) {
                                    ref
                                        .read(pageProvider.notifier)
                                        .showSuccess('儲存成功');
                                    AutoRouter.of(context).popForced();
                                  }
                                });
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

String extractDateTime(String input) {
  // 使用正则表达式匹配日期时间部分
  final pattern = RegExp(r'teeth_range_detect/([^/]+)/');
  final match = pattern.firstMatch(input);
  if (match != null) {
    return match.group(1)!; // 返回匹配到的日期时间部分
  }
  return ''; // 如果没有匹配到，则返回空字符串
}

// 圖片錯誤時Widget
Widget _buildImageErrorWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'ic_broken_image.png',
        width: 36,
        height: 36,
        color: Colors.grey,
      ),
      Text(
        '圖片載入失敗',
        style: TextStyle(fontSize: 8),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Color getPlaqueColor(String? percentagePlaqueTotal) {
  if (percentagePlaqueTotal == null) {
    return Colors.yellow;
  }

  double? value = double.tryParse(percentagePlaqueTotal);
  if (value == null) {
    return Colors.yellow;
  }

  return value < 60 ? Colors.green : Colors.red;
}

String getPlaqueMessage(String? percentagePlaqueTotal) {
  if (percentagePlaqueTotal == null) {
    return "請重新拍攝一次";
  }

  double? value = double.tryParse(percentagePlaqueTotal);
  if (value == null) {
    return "請重新拍攝一次";
  }

  return value < 60
      ? "牙菌斑含量為${percentagePlaqueTotal}%，做得很好！"
      : "牙菌斑含量為${percentagePlaqueTotal}%，再加強一下！";
}
