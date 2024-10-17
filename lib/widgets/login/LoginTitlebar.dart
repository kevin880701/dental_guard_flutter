import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget LoginTitlebar({
  String? title,
  required BuildContext context,
  bool showLogo = true,
  bool isBack = false,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.fromLTRB(0.sp, 4.sp, 0.sp, 4.sp),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isBack
                ? assetImage(AppImages.backIcon,
                width: 24.sp, height: 24.sp, color: AppColors.primaryBlack,onTap: () {
                  AutoRouter.of(context).popForced();
                })
                : SizedBox(
                    width: 24.sp,
                  ),
            SizedBox(
              width: 24.sp,
            )
          ],
        ),
        if(title != null)...[
        gapH32,
        Container(
          alignment: Alignment.centerLeft,
          child: customText(title, fontWeight: FontWeight.w600, fontSize: 36.sp),
        )],
      ],
    ),
  );
}
