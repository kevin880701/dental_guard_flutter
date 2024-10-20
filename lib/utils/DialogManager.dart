import 'dart:async';
import 'package:dental_guard_flutter/widgets/dialog/window/ChooseImageDialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/widgets/dialog/window/BottomEditDialog.dart';
import 'package:dental_guard_flutter/widgets/dialog/window/DefaultDialog.dart';

Future<void> showDefaultDialog(BuildContext context,
    {String icon = AppImages.informationIcon,
    Color? iconColor = AppColors.black,
    String? title,
    String? content,
    required Widget firstButton,
    Widget? secondButton,
    bool barrierDismissible = true}) async {
  showDialogBox(
    context,
    alignment: Alignment.center,
    barrierDismissible: barrierDismissible,
    child: DefaultDialog(
      icon: icon,
      iconColor: iconColor,
      title: title,
      content: content,
      firstButton: firstButton,
      secondButton: secondButton,
    ),
  );
}

Future<void> showBottomEditDialog(
  BuildContext context, {
  required String title,
  String? hintText,
  String? defaultText,
  required String buttonText,
  void Function(String text)? onTap,
  bool Function(String text)? isValid,
  String invalidText = AppTexts.inputFieldCannotEmpty,
  List<TextInputFormatter>? inputFormatters,
  TextInputType? keyboardType,
  bool barrierDismissible = true,
  bool isSymbols = true,
  int? wordLimit = 20,
}) async {
  await showDialogBox(
    alignment: Alignment.bottomCenter,
    barrierDismissible: barrierDismissible,
    context,
    child: BottomEditDialog(
      title: title,
      hintText: hintText,
      defaultText: defaultText,
      buttonText: buttonText,
      onTap: onTap,
      isValid: isValid,
      invalidText: invalidText,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      isSymbols: isSymbols,
      wordLimit: wordLimit,
    ),
  );
}

Future<void> showChooseImageDialog(
  BuildContext context, {
     required VoidCallback onChooseImageTap,
     required VoidCallback onCapturePhotoTap,
  bool barrierDismissible = true,
}) async {
  await showDialogBox(
    alignment: Alignment.bottomCenter,
    barrierDismissible: barrierDismissible,
    context,
    child: ChooseImageDialog(onChooseImageTap: onChooseImageTap,
        onCapturePhotoTap: onCapturePhotoTap),
  );
}

Future<T?> showDialogBox<T>(
  BuildContext context, {
  required Widget child,
  Alignment alignment = Alignment.center,
  bool barrierDismissible = true,
  Duration transitionDuration = const Duration(milliseconds: 300),
}) async {
  EasyLoading.dismiss();

  return await showGeneralDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierLabel: "Dialog",
    transitionDuration: transitionDuration,
    pageBuilder: (context, animation1, animation2) {
      return Align(
        alignment: alignment,
        child: Material(
          color: AppColors.transparent,
          child: child,
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      // 根據 alignment 決定動畫方向
      Offset beginOffset = Offset(0, 0); // 默認沒有位移
      if (alignment == Alignment.bottomCenter) {
        beginOffset = Offset(0, 1); // 從底部滑入
      } else if (alignment == Alignment.center) {}

      return SlideTransition(
        position: Tween<Offset>(
          begin: beginOffset,
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}
