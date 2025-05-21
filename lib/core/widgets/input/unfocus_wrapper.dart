
import 'package:flutter/material.dart';

/// 當不可編輯時，包裝 TextField 以避免觸發焦點與點擊事件
Widget buildUnfocusWrapper({required Widget child, required bool isEdit}) {
  return isEdit
      ? child
      : IgnorePointer(
    ignoring: true,
    child: AbsorbPointer(absorbing: true, child: child),
  );
}