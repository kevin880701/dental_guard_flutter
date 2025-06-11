import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/app_resources.dart';
import '../../button/app_button.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';

class DefaultDialog extends HookConsumerWidget {
  const DefaultDialog({
    super.key,
    this.title,
    this.content,
    this.leftButtonText = AppStrings.cancel,
    this.rightButtonText = AppStrings.confirm,
    this.onLeftButtonPressed,
    this.onRightButtonPressed,
  });

  final String? title;
  final String? content;
  final String leftButtonText;
  final String rightButtonText;
  final VoidCallback? onLeftButtonPressed;
  final VoidCallback? onRightButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (title != null) ...[
              Padding(
                padding: EdgeInsets.all(4.0),
                child: AppText(
                  text: title!,
                  textStyle: titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            if (content != null) ...[
              Padding(
                padding: EdgeInsets.all(4.0),
                child: AppText(
                  text: content!,
                  textStyle: bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            SizedBox(height: 8.sp),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(
                    text: leftButtonText,
                    onPressed: onLeftButtonPressed ?? () {
                      context.pop(false);
                    },
                    fontColor: AppColors.primaryBlack,
                    borderColor: AppColors.primaryBlack,
                    backgroundColor: AppColors.transparent,
                  ),
                  SizedBox(width: 16,),
                  AppButton(
                    text: rightButtonText,
                    onPressed: onRightButtonPressed ?? () {
                      context.router.pop(true);
                    },
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
