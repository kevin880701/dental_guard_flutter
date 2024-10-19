import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainTitleBar extends HookWidget {
  final bool isBack;
  final VoidCallback? onBackTap;
  final VoidCallback? onTextTap;
  final bool isInformation;
  final String title;
  final VoidCallback? onAddTap;

  const MainTitleBar({
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
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: customText(title, fontWeight: FontWeight.w600, fontSize: 18, color: AppColors.white),
          ),
          if (isBack || onBackTap != null) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: assetImage(AppImages.backIcon, width: 24, height: 24, color: AppColors.white, onTap: () {
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
                  child: assetImage(AppImages.informationIcon, width: 24, height: 24, color: AppColors.white)),
            )
          ],
          if (onAddTap != null) ...[
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).popForced();
                  },
                  child: assetImage(AppImages.addIcon, width: 24, height: 24, color: AppColors.white)),
            )
          ],
        ],
      ),
    );
  }
}
