import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_resources.dart';
import '../widgets/dialog/window/bottom_edit_dialog.dart';
import '../widgets/dialog/window/default_dialog.dart';
import '../widgets/dialog/window/error_dialog.dart';
import '../widgets/input/input_type.dart';

/// Dialog 顯示位置
enum DialogPosition {
  center,
  bottom,
}

/// 預設確認 Dialog（回傳 true/false）
Future<bool?> showDefaultDialog(
    BuildContext context, {
      String? title,
      String? content,
      String leftButtonText = AppStrings.cancel,
      String rightButtonText = AppStrings.confirm,
      bool barrierDismissible = true,
      bool canPop = true,
    }) async {
  return await showDialogBox<bool>(
    context,
    child: DefaultDialog(
      title: title,
      content: content,
      leftButtonText: leftButtonText,
      rightButtonText: rightButtonText,
    ),
    position: DialogPosition.center,
    barrierDismissible: barrierDismissible,
    canPop: canPop,
  );
}

/// 底部輸入 Dialog（回傳 String 或 null）
Future<String?> showBottomEditDialog(
    BuildContext context, {
      required String title,
      String? hintText,
      String? defaultText,
      String buttonText = AppStrings.confirm,
      bool barrierDismissible = true,
      int? wordLimit = 20,
      InputType inputType = InputType.ALL,
      bool isAllowSymbols = false,
      bool isAllowEmoji = false,
    }) async {
  return await showDialogBox<String>(
    context,
    child: BottomEditDialog(
      title: title,
      hintText: hintText,
      defaultText: defaultText,
      buttonText: buttonText,
      wordLimit: wordLimit,
      inputType: inputType,
      isAllowSymbols: isAllowSymbols,
      isAllowEmoji: isAllowEmoji,
    ),
    position: DialogPosition.bottom,
    barrierDismissible: barrierDismissible,
  );
}

/// 錯誤 Dialog（回傳 null）
Future<bool?> showErrorDialog(
    BuildContext context, {
      required String title,
      String? content,
      String buttonText = AppStrings.confirm,
      bool barrierDismissible = true,
      bool canPop = true,
    }) async {
  return await showDialogBox<bool?>(
    context,
    child: ErrorDialog(
      title: title,
      content: content,
      buttonText: buttonText,
    ),
    position: DialogPosition.center,
    barrierDismissible: barrierDismissible,
    canPop: canPop,
  );
}

/// 通用 Dialog 包裝函式（支援位置動畫、背景點擊關閉等）
Future<T?> showDialogBox<T>(
    BuildContext context, {
      required Widget child,
      DialogPosition position = DialogPosition.center,
      bool barrierDismissible = true,
      bool canPop = true,
      Duration transitionDuration = const Duration(milliseconds: 200),
      bool autoUnfocus = true,
    }) async {
  if (autoUnfocus) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Offset beginOffset = Offset.zero;
  switch (position) {
    case DialogPosition.bottom:
      beginOffset = const Offset(0, 1); // 從底部滑入
      break;
    case DialogPosition.center:
      beginOffset = Offset.zero; // 默認無動畫
      break;
  }

  try {
    return await showGeneralDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: "Dialog",
      transitionDuration: transitionDuration,
      pageBuilder: (context, animation1, animation2) {
        return PopScope(
          canPop: canPop,
          child: Align(
            alignment: position == DialogPosition.bottom
                ? Alignment.bottomCenter
                : Alignment.center,
            child: child,
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: beginOffset,
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  } catch (e, stack) {
    debugPrint('Dialog error: $e\n$stack');
    return null;
  }
}
