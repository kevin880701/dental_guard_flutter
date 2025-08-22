import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_images.dart';
import 'package:dental_guard_flutter/core/widgets/image/app_icon.dart';
import 'package:dental_guard_flutter/core/widgets/text/app_text.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../constants/app_colors.dart';

class TitleBar extends HookWidget {
  final bool isBack;
  final VoidCallback? onBackTap;
  final VoidCallback? onTextTap;
  final bool isInformation;
  final String title;
  final VoidCallback? onAddTap;

  const TitleBar({
    super.key,
    this.isBack = false,
    this.onBackTap,
    this.onTextTap,
    this.isInformation = false,
    this.onAddTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryBlack,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: AppText(
                text: title, textStyle: titleMedium, color: AppColors.white),
          ),
          if (isBack || onBackTap != null) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: AppIcon(
                  icon: AppImages.arrowLeftIcon,
                  size: 24,
                  color: AppColors.white,
                  onTap: () {
                    if (onBackTap != null) {
                      onBackTap!();
                    } else {
                      AutoRouter.of(context).popForced();
                    }
                  }),
            )
          ],
          if (isInformation) ...[
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).popForced();
                  },
                  child: AppIcon(
                      icon: AppImages.informationIcon,
                      size: 24,
                      color: AppColors.white)),
            )
          ],
          if (onAddTap != null) ...[
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onAddTap!();
                  },
                  child: AppIcon(
                      icon: AppImages.addIcon,
                      size: 24,
                      color: AppColors.white)),
            )
          ],
        ],
      ),
    );
  }
}
