import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/app_resources.dart';
import '../../button/app_button.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';

class ErrorDialog extends HookConsumerWidget {
  const ErrorDialog({
    super.key,
    required this.title,
    this.content,
    this.buttonText = AppStrings.confirm,
    this.onPressed,
  });

  final String title;
  final String? content;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      alignment: Alignment.center,
      insetPadding: EdgeInsets.symmetric(horizontal: 48.sp),
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 4.sp),
            AppText(text: title, textStyle: titleMedium),
            SizedBox(height: 16.sp),
            if (content != null) ...[
              AppText(text: content!, color: Colors.grey),
              SizedBox(height: 8.sp),
            ],
            AppButton(
              text: buttonText,
              onPressed: onPressed ?? () {
                context.router.pop(true);
              },
            ),
          ],
        ),
      ),
    );
  }
}
