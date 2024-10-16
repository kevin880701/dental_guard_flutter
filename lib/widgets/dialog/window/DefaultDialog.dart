import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';

class DefaultDialog extends HookConsumerWidget {
  const DefaultDialog({
    super.key,
    this.icon = AppImages.informationIcon,
    this.iconColor = AppColors.black,
    this.title,
    this.content,
    required this.firstButton,
    this.secondButton,
  });

  final String? icon;
  final Color? iconColor;
  final String? title;
  final String? content;
  final Widget firstButton;
  final Widget? secondButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.8,
      padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          assetImage(icon!, width: 32.sp, color: iconColor!),
          SizedBox(
            height: 4.sp,
          ),
          title != null
              ? customText(title!,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  overflow: null,
                  textAlign: TextAlign.center)
              : SizedBox(),
          SizedBox(
            height: 8.sp,
          ),
          content != null
              ? customText(content!,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  overflow: null,
                  color: AppColors.grey,
                  textAlign: TextAlign.center)
              : SizedBox(),
          SizedBox(
            height: 8.sp,
          ),
          Row(
            children: [
              if (secondButton == null)
                Expanded(
                  child: firstButton,
                )
              else ...[
                Expanded(
                  child: firstButton,
                ),
                SizedBox(width: 8.sp),
                Expanded(
                  child: secondButton!,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
