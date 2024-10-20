import 'dart:io';

import 'package:dental_guard_flutter/data/response/analyzeTeeth/AnalyzeTeethResponse.dart';
import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/extensions/PageExtensions.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/detectImage/DetectResultsPage.dart';
import 'package:dental_guard_flutter/utils/FileManager.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/RoundTabBarWidget.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
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
    final selectedIndex = useState<int>(0);
    final tabBarKey = useState(ValueKey<int>(0));

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        final tabBarWidgetController = Get.find<TabBarWidgetController>();

        // 重置 tabBarWidgetController 的 tabIndex 為 1
        tabBarWidgetController.onChangeTab(index: 1);
        tabBarKey.value = ValueKey<int>(tabBarKey.value.value + 1);
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
            Container(
              child: TabBarWidget(
                key: tabBarKey.value,
                firstTab: AppTexts.originalImage,
                secondTab: AppTexts.detectionResults,
                onTabChanged: (int index) {
                  print('index:$index');
                  selectedIndex.value = index - 1;
                },
                selectedTabDecoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                  border: Border.all(color: AppColors.borderGrey),
                  color: AppColors.white,
                ),
                backgroundBoxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.sp)),
                  color: AppColors.primaryBlack,
                ),
                selectedTabTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontSize: 16.sp,
                ),
                unselectedTabTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlack,
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: IndexedStack(
                  index: selectedIndex.value,
                  children: [
                    OriginalImagePage(
                      originalUrl:
                          imageDetectState.analyzeTeethResponse?.teethRangePath,
                    ),
                    DetectResultsPage(),
                  ],
                ),
              ),
            ),
            if (teethRecord == null) ...[
              Padding(
                padding: const EdgeInsets.all(32),
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
                          imageDetectNotifier.analyzeTeeth(
                              originalImage: imageDetectState.originalImage!).then((response){
                                if(response == null){
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
