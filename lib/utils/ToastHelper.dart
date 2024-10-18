
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/resources/AppColors.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';

import 'toast/toastification.dart';

///
/// 顯示一般提示的 Toast。
///
/// Params：
///   - context: 當前的 BuildContext
///   - text: 要顯示的提示文本，默認為 "一般提示"
///   - backgroundColor: 提示的背景顏色，默認為 AppColors.primaryBlack
///   - textColor: 提示文本的顏色，默認為 AppColors.white
///   - alignment: Toast 的顯示位置，默認為 Alignment.topCenter
///
/// 示範：
/// ```
/// showToast(
///   context: context,
///   text: "一般提示",
///   backgroundColor: AppColors.primaryBlack,
///   textColor: AppColors.white,
///   alignment: Alignment.topCenter,
/// );
/// ```
void showToast(
    {required BuildContext context,
    String text = "一般提示",
    Color? backgroundColor = AppColors.primaryBlack,
    Color? textColor = AppColors.white,
    Alignment? alignment = Alignment.topCenter}) {
  toastification.show(
    context: context,
    type: ToastificationType.info,
    style: ToastificationStyle.simple,
    title: toastText(text, fontSize: 12.sp, color: textColor),
    alignment: alignment,
    autoCloseDuration: const Duration(seconds: 2),
    backgroundColor: backgroundColor,
    primaryColor: backgroundColor,
    borderRadius: BorderRadius.circular(96.sp),
  );
}

///
/// 顯示錯誤提示的 Toast。
///
/// Params：
///   - context: 當前的 BuildContext
///   - text: 要顯示的錯誤信息，默認為 "發生錯誤！"
///   - backgroundColor: 提示的背景顏色，默認為紅色
///   - textColor: 提示文本的顏色，默認為白色
///   - alignment: Toast 的顯示位置，默認為 Alignment.topCenter
///
/// 示範：
/// ```
/// showErrorToast(
///   context: context,
///   text: "發生錯誤！",
///   backgroundColor: Colors.red,
///   textColor: Colors.white,
///   alignment: Alignment.topCenter,
/// );
/// ```
void showErrorToast(
    {required BuildContext context,
    String text = "發生錯誤！",
    Color? backgroundColor = Colors.red,
    Color? textColor = Colors.white,
    Alignment? alignment = Alignment.topCenter}) {
  toastification.show(
    context: context,
    type: ToastificationType.error,
    style: ToastificationStyle.simple,
    title: toastText(text, fontSize: 12.sp, color: textColor),
    alignment: alignment,
    autoCloseDuration: const Duration(seconds: 2),
    backgroundColor: backgroundColor,
    primaryColor: backgroundColor,
    borderRadius: BorderRadius.circular(96.sp),
  );
}

///
/// 顯示警告提示的 Toast。
///
/// Params：
///   - context: 當前的 BuildContext
///   - text: 要顯示的警告信息，默認為 "警告！"
///   - backgroundColor: 提示的背景顏色，默認為橙色
///   - textColor: 提示文本的顏色，默認為白色
///   - alignment: Toast 的顯示位置，默認為 Alignment.topCenter
///
/// 示範：
/// ```
/// showWarningToast(
///   context: context,
///   text: "警告！",
///   backgroundColor: Colors.orange,
///   textColor: Colors.white,
///   alignment: Alignment.topCenter,
/// );
/// ```
void showWarningToast(
    {required BuildContext context,
    String text = "警告！",
    Color? backgroundColor = Colors.orange,
    Color? textColor = Colors.white,
    Alignment? alignment = Alignment.topCenter}) {
  toastification.show(
    context: context,
    type: ToastificationType.warning,
    style: ToastificationStyle.simple,
    title: toastText(text, fontSize: 12.sp, color: textColor),
    alignment: alignment,
    autoCloseDuration: const Duration(seconds: 2),
    backgroundColor: backgroundColor,
    primaryColor: backgroundColor,
    borderRadius: BorderRadius.circular(96.sp),
  );
}

///
/// 顯示成功提示的 Toast。
///
/// Params：
///   - context: 當前的 BuildContext
///   - text: 要顯示的成功信息，默認為 "操作成功！"
///   - backgroundColor: 提示的背景顏色，默認為綠色
///   - textColor: 提示文本的顏色，默認為白色
///   - alignment: Toast 的顯示位置，默認為 Alignment.topCenter
///
/// 示範：
/// ```
/// showSuccessToast(
///   context: context,
///   text: "操作成功！",
///   backgroundColor: Colors.green,
///   textColor: Colors.white,
///   alignment: Alignment.topCenter,
/// );
/// ```
void showSuccessToast(
    {required BuildContext context,
    String text = "操作成功！",
    Color? backgroundColor = Colors.green,
    Color? textColor = Colors.white,
    Alignment? alignment = Alignment.topCenter}) {
  toastification.show(
    context: context,
    type: ToastificationType.success,
    style: ToastificationStyle.simple,
    title: toastText(text, fontSize: 12.sp, color: textColor),
    alignment: alignment,
    autoCloseDuration: const Duration(seconds: 2),
    backgroundColor: backgroundColor,
    primaryColor: backgroundColor,
    borderRadius: BorderRadius.circular(96.sp),
  );
}
