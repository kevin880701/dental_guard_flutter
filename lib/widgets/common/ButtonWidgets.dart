import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';

///
/// 自訂圓角按鈕，帶有可選水波紋效果。
///
/// Params：
///   - radius: 圓角半徑，預設為 96
///   - text: 按鈕顯示的文字
///   - onTap: 按鈕點擊事件的回呼
///   - verticalPadding: 垂直方向的內邊距，預設為 12
///   - bgColor: 按鈕背景色，預設為 AppColors.primaryBlue
///   - fontColor: 按鈕中文字體顏色，預設為 AppColors.primaryBlack
///   - borderColor: 按鈕邊框顏色，預設為 AppColors.transparent
///   - enableRipple: 是否啟用水波紋效果，預設為 true
///   - splashColor: 水波紋效果的顏色，預設為 Colors.transparent
///   - highlightColor: 點擊時高亮顏色，預設為 Colors.transparent
///
/// 示範：
/// ```
/// RoundedButton(
///   text: '按鈕',
///   onTap: () {
///     // 處理按鈕點擊
///   },
///   radius: 50,
///   bgColor: Colors.blue,
///   fontColor: Colors.white,
///   borderColor: Colors.red,
/// );
/// ```
/// 
Widget roundedButton({
  double? radius,
  required String text,
  VoidCallback? onTap,
  double? verticalPadding,
  Color bgColor = AppColors.bgColor,
  Color fontColor = AppColors.primaryBlack,
  Color borderColor = AppColors.transparent,
  bool enableRipple = true,
  Color splashColor = Colors.transparent,
  Color highlightColor = Colors.transparent,
}) {
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius ?? 96.sp),
        border: Border.all(
          color: borderColor,
          width: 1.sp,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 12.sp, horizontal: 24.sp),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: fontColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
