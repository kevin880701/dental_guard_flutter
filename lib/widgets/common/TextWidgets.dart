import 'dart:io';

import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
/// 自定義Text，支援多種Text樣式設置，並可選擇是否啟用水波紋效果。
///
/// Params：
///   - text: 要顯示的文字。
///   - overflow: 文本溢出時的處理方式，預設為 `TextOverflow.ellipsis`。
///   - fontWeight: 字粗，預設為 `FontWeight.w600`。
///   - fontSize: 字體大小，預設為 `16`。
///   - textAlign: 文本對齊方式，預設為靠左。
///   - color: 字體顏色，預設為 `AppColors.primaryBlack`。
///   - decoration: 文本裝飾（可選）。
///   - height: 行高，預設為 `1.4`。
///   - maxLines: 最大行數（可選）。
///   - onTap: 點擊文本時的回調函數（可選）。
///   - enableRipple: 是否啟用水波紋效果，預設為 `true`。
///   - splashColor: 水波紋的顏色，預設為 `Colors.transparent`。
///   - highlightColor: 點擊後高亮顏色，預設為 `Colors.transparent`。
///
/// Return：
///   返回一個帶有水波紋效果的 [Widget]，用於顯示自定義樣式的文本並響應點擊事件。
///
/// Example：
/// ```
/// customText(
///   'Click me!',
///   fontSize: 16,
///   onTap: () {
///     print('Text tapped!');
///   },
///   enableRipple: true,
/// );
/// ```
Widget customText(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w600,
      double? fontSize,
      TextAlign textAlign = TextAlign.start,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration = TextDecoration.none, // 預設無底線
      double height = 1.4,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
      bool underline = false,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";

  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: underline ? TextDecoration.underline : decoration,
        decorationColor: color,
        color: color,
        fontSize: fontSize ?? 16.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

/// 用於顯示 h1 樣式的標題文字。
///
/// Params：
///   - text: 顯示的文字內容
///   - overflow: 文字溢出的處理方式，預設為省略號
///   - fontWeight: 文字的粗細，預設為 700
///   - fontSize: 文字大小，預設為 36
///   - textAlign: 文字對齊方式，預設為左對齊
///   - color: 文字顏色，預設為黑色
///   - decoration: 文字裝飾，如下劃線
///   - height: 行高，預設為 1
///   - maxLines: 最大行數
///   - onTap: 點擊事件
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///
/// 示範：
/// ```
/// h1Text(
///   "標題文字",
///   fontWeight: FontWeight.w700,
///   fontSize: 36,
///   color: Colors.black,
/// );
/// ```
Widget h1Text(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w700,
      double? fontSize,
      TextAlign textAlign = TextAlign.left,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize ?? 36.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

/// 用於顯示 h2 樣式的標題文字。
///
/// Params：
///   - text: 顯示的文字內容
///   - overflow: 文字溢出的處理方式，預設為省略號
///   - fontWeight: 文字的粗細，預設為 500
///   - fontSize: 文字大小，預設為 20
///   - textAlign: 文字對齊方式，預設為左對齊
///   - color: 文字顏色，預設為黑色
///   - decoration: 文字裝飾，如下劃線
///   - height: 行高，預設為 1
///   - maxLines: 最大行數
///   - onTap: 點擊事件
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///
/// 示範：
/// ```
/// h2Text(
///   "次級標題文字",
///   fontWeight: FontWeight.w500,
///   fontSize: 20,
///   color: Colors.black,
/// );
/// ```
Widget h2Text(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w500,
      double? fontSize,
      TextAlign textAlign = TextAlign.left,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize ?? 20.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

/// 用於顯示 h3 樣式的標題文字。
///
/// Params：
///   - text: 顯示的文字內容
///   - overflow: 文字溢出的處理方式，預設為省略號
///   - fontWeight: 文字的粗細，預設為 500
///   - fontSize: 文字大小，預設為 18
///   - textAlign: 文字對齊方式，預設為置中
///   - color: 文字顏色，預設為黑色
///   - decoration: 文字裝飾，如下劃線
///   - height: 行高，預設為 1
///   - maxLines: 最大行數
///   - onTap: 點擊事件
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///
/// 示範：
/// ```
/// h3Text(
///   "三級標題文字",
///   fontWeight: FontWeight.w500,
///   fontSize: 18,
///   color: Colors.black,
///   textAlign: TextAlign.center,
/// );
/// ```
Widget h3Text(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w500,
      double? fontSize,
      TextAlign textAlign = TextAlign.center,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize ?? 18.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

/// 用於顯示 body1 樣式的普通段落文字。
///
/// Params：
///   - text: 顯示的文字內容
///   - overflow: 文字溢出的處理方式，預設為省略號
///   - fontWeight: 文字的粗細，預設為 400
///   - fontSize: 文字大小，預設為 16
///   - textAlign: 文字對齊方式，預設為右對齊
///   - color: 文字顏色，預設為黑色
///   - decoration: 文字裝飾，如下劃線
///   - height: 行高，預設為 1
///   - maxLines: 最大行數
///   - onTap: 點擊事件
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///
/// 示範：
/// ```
/// body1Text(
///   "普通段落文字",
///   fontWeight: FontWeight.w400,
///   fontSize: 16,
///   color: Colors.black,
///   textAlign: TextAlign.right,
/// );
/// ```
Widget body1Text(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w400,
      double? fontSize,
      TextAlign textAlign = TextAlign.right,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize ?? 16.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

/// 用於顯示 body2 樣式的次要段落文字。
///
/// Params：
///   - text: 顯示的文字內容
///   - overflow: 文字溢出的處理方式，預設為省略號
///   - fontWeight: 文字的粗細，預設為 400
///   - fontSize: 文字大小，預設為 14
///   - textAlign: 文字對齊方式，預設為置中
///   - color: 文字顏色，預設為黑色
///   - decoration: 文字裝飾，如下劃線
///   - height: 行高，預設為 1
///   - maxLines: 最大行數
///   - onTap: 點擊事件
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///
/// 示範：
/// ```
/// body2Text(
///   "次要段落文字",
///   fontWeight: FontWeight.w400,
///   fontSize: 14,
///   color: Colors.black,
///   textAlign: TextAlign.center,
/// );
/// ```
Widget body2Text(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w400,
      double? fontSize,
      TextAlign textAlign = TextAlign.center,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize ?? 14.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

/// 用於顯示 caption 樣式的小型輔助文字。
///
/// Params：
///   - text: 顯示的文字內容
///   - overflow: 文字溢出的處理方式，預設為省略號
///   - fontWeight: 文字的粗細，預設為 400
///   - fontSize: 文字大小，預設為 16
///   - textAlign: 文字對齊方式，預設為左對齊
///   - color: 文字顏色，預設為黑色
///   - decoration: 文字裝飾，如下劃線
///   - height: 行高，預設為 1
///   - maxLines: 最大行數
///   - onTap: 點擊事件
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///
/// 示範：
/// ```
/// captionText(
///   "輔助文字",
///   fontWeight: FontWeight.w400,
///   fontSize: 16,
///   color: Colors.black,
///   textAlign: TextAlign.left,
/// );
/// ```
Widget captionText(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w400,
      double? fontSize,
      TextAlign textAlign = TextAlign.left,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: fontSize ?? 16.sp,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        height: height,
      ),
    ),
  );
}

///
/// 用於顯示自訂的提示文字元件，並具有可選的點擊效果與水波紋效果。
///
/// Params：
///   - text: 要顯示的文字內容
///   - overflow: 當文字過長時的處理方式，預設為 TextOverflow.ellipsis
///   - fontWeight: 字體的粗細，預設為 FontWeight.w400
///   - fontSize: 字體大小，如果未指定則預設為 12.sp
///   - textAlign: 文字對齊方式，預設為 TextAlign.left
///   - color: 文字顏色，預設為 AppColors.primaryBlack
///   - decoration: 文字裝飾樣式，如底線等，預設為 null
///   - height: 行高，預設為 1
///   - maxLines: 顯示的最大行數，預設為無限制
///   - onTap: 點擊時觸發的回呼函數，預設為 null
///   - enableRipple: 是否啟用水波紋效果，預設為 true
///   - splashColor: 水波紋效果顏色，預設為 Colors.transparent
///   - highlightColor: 點擊時高亮顏色，預設為 Colors.transparent
///
/// Return：
///   返回一個包含自訂樣式的文字元件，支持點擊和水波紋效果。
///
/// 示範：
/// ```
/// toastText(
///   '這是提示文字',
///   onTap: () {
///     print('文字被點擊了');
///   },
///   fontSize: 14,
///   color: Colors.red,
/// );
/// ```
Widget toastText(
    String text, {
      TextOverflow? overflow = TextOverflow.ellipsis,
      FontWeight? fontWeight = FontWeight.w400,
      double? fontSize,
      TextAlign textAlign = TextAlign.left,
      Color? color = AppColors.primaryBlack,
      TextDecoration? decoration,
      double height = 1,
      int? maxLines,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
    }) {
  var fontFamily = Platform.isIOS ? "PingFangTC" : "NotoSansTC";
  return Text(
    text,
    textAlign: textAlign,
    overflow: overflow,
    maxLines: maxLines,
    style: TextStyle(
      decoration: decoration,
      color: color,
      fontSize: fontSize ?? 12.sp,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      height: height,
    ),
  );
}
