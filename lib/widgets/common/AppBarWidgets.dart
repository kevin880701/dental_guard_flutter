import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';

/// 用於創建黑色背景的 AppBar，並設置狀態欄文字和圖示為亮色。
///
/// Return：
///   返回一個 AppBar widget，背景顏色為黑色，無陰影，高度為 0，適合透明效果的狀態欄。
///
/// 示範：
/// ```
/// blackLightAppBar();
/// ```
PreferredSizeWidget blackLightAppBar() {
  return AppBar(
    elevation: 0, // 去除陰影
    backgroundColor: AppColors.black, // 設定背景為黑色
    systemOverlayStyle: SystemUiOverlayStyle.light, // 設定系統狀態欄文字和圖示為亮色
    toolbarHeight: 0, // 設定工具欄高度為 0，僅顯示狀態欄
  );
}


/// 用於創建深色背景的 AppBar，並設置狀態欄文字和圖示為暗色。
///
/// Return：
///   返回一個 AppBar widget，背景顏色為 bgColor，無陰影，高度為 0，適合透明效果的狀態欄。
///
/// 示範：
/// ```
/// bgDarkAppBar();
/// ```
PreferredSizeWidget bgDarkAppBar() {
  return AppBar(
    elevation: 0, // 去除陰影
    backgroundColor: AppColors.bgColor, // 設定背景顏色為預設深色背景
    systemOverlayStyle: SystemUiOverlayStyle.dark, // 設定系統狀態欄文字和圖示為暗色
    toolbarHeight: 0, // 設定工具欄高度為 0，僅顯示狀態欄
  );
}
