import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../constants/app_resources.dart';
import 'image/app_icon.dart';

class TitleBar extends HookWidget {
  final bool isBack;
  final VoidCallback? onBackTap;
  final VoidCallback? onTextTap;
  final String buttonText;
  final Color buttonTextColor;
  final bool isInformation;
  final String title;

  const TitleBar({
    super.key,
    this.isBack = false,
    this.onBackTap,
    this.onTextTap,
    this.buttonText = AppStrings.cancel,
    this.buttonTextColor = AppColors.white,
    this.isInformation = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Sizes.appBarHeight,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: AppText(text: title, color: AppColors.primaryPurple, textStyle: titleMedium,),
          ),
          if (isBack || onBackTap != null) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                  onTap: () {
                    if(onBackTap != null){
                      onBackTap!();
                    }else{
                      context.router.pop();
                    }
                  },
                  child: AppIcon(iconName: AppImages.arrowLeftIcon, color: AppColors.primaryBlack, padding: 0,)),
            )
          ],
        ],
      ),
    );
  }
}
