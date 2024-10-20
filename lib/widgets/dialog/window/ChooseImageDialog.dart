import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/extensions/PageExtensions.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/screen/main/imageDetect/ImageDetectProvider.dart';
import 'package:dental_guard_flutter/utils/FileManager.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';

class ChooseImageDialog extends HookConsumerWidget {
  const ChooseImageDialog({
    super.key,
    required this.onChooseImageTap,
    required this.onCapturePhotoTap,
  });
  final VoidCallback onChooseImageTap;
  final VoidCallback onCapturePhotoTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final imageDetectNotifier = ref.read(imageDetectProvider.notifier);

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                AutoRouter.of(context).popForced();
                onChooseImageTap();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: customText('從相簿中選擇...'),
              ),
            ),
            gapH16,
            Container(height: 1,color: AppColors.borderGrey,),
            gapH16,
            GestureDetector(
              onTap: () {
                AutoRouter.of(context).popForced();
                onCapturePhotoTap();
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: customText('拍攝照片'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
