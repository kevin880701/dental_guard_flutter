import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/providers/version_info_provider.dart';
import 'package:dental_guard_flutter/core/widgets/image/asset_image_widget.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/utils/utils.dart';
import '../../../../routes/app_router.dart';

@RoutePage()
class LaunchScreen extends HookConsumerWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        // 先取得版本資訊
        final success =
            await ref.read(versionInfoProvider.notifier).loadVersionInfo();
        if (!success) {
          // 取得版本失敗
          showDefaultDialog(
            context,
            canPop: false,
            title: AppStrings.getVersionFailed,
            content: AppStrings.pleaseUpdateToContinue,
            onRightButtonPressed: () async {
              await openStore();
              exitApp();
            },
            leftButtonText: "結束",
            onLeftButtonPressed: () {
              context.router.pop(false);
              exitApp();
            },
          );
          return;
        }

        final state = ref.read(versionInfoProvider);
        final needUpdate = isDebugVersionGreater(
          state.debugVersion,
          state.appInfo?.appVersion,
        );

        if (!needUpdate) {
          showDefaultDialog(
            context,
            canPop: false,
            title: AppStrings.versionOutdated,
            content: AppStrings.pleaseUpdateToContinue,
            onRightButtonPressed: () async {
              await openStore();
              exitApp();
            },
            leftButtonText: "結束",
            onLeftButtonPressed: () {
              context.router.pop(false);
              exitApp();
            },
          );
          return;
        }

        // 通過檢查後再延遲跳頁
        await Future.delayed(const Duration(seconds: 2));
        AutoRouter.of(context).replace(const LoginRoute());
      });
      return null;
    }, []);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.bgColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AssetImageWidget(
                    image: AppImages.appIcon,
                    width: screenWidth * 0.4,
                    height: screenWidth * 0.4,
                  ),
                  AppText(text: AppStrings.appName)
                ],
              ),
            ),
            Positioned(bottom: 0,right: 4,child: AppText(text: ref.watch(versionInfoProvider).releaseVersion)),

          ],
        ),
      ),
    );
  }
}
