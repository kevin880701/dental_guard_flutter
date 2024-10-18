import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/detectImage/DetectResultsPage.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

import 'originalImage/OriginalImagePage.dart';

@RoutePage()
class ImageDetectPage extends HookConsumerWidget {
  const ImageDetectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageDetectNotifier = ref.read(imageDetectProvider.notifier);
    final imageDetectState = ref.watch(imageDetectProvider);
    final selectedIndex = useState<int>(0);

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
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: TabBarWidget(
                firstTab: AppTexts.originalImage,
                secondTab: AppTexts.detectionResults,
                onTabChanged: (int index) {
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
                    OriginalImagePage(),
                    DetectResultsPage(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedButton(
                    text: AppTexts.clearImage,
                    bgColor: AppColors.red,
                    fontColor: AppColors.white,
                    onTap: (){
                      imageDetectNotifier.clearImage();
                    }
                  ),
                  roundedButton(
                    text: AppTexts.imageDetection,
                    bgColor: AppColors.primaryBlack,
                    fontColor: AppColors.white,
                  ),
                  roundedButton(
                    text: AppTexts.imageStorage,
                    bgColor: AppColors.blue,
                    fontColor: AppColors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
