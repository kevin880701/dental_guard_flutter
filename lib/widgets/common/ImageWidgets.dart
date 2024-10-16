import 'package:flutter/material.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
/// 根據指定的檔名從 assets 載入圖片，並可選擇設置寬度、高度、適應方式及點擊事件處理。
/// 同時可以控制是否啟用水波紋效果和設置邊框顏色及寬度。
///
/// Params：
///   - filename: 圖片檔名。
///   - width: 圖片的寬度（可選）。
///   - height: 圖片的高度（可選）。
///   - fit: 圖片的 BoxFit 屬性，用於控制圖片如何適應容器（可選）。
///   - alignment: 圖片的對齊方式，預設為居中對齊。
///   - onTap: 點擊圖片時的回調函數，預設為空（可選）。
///   - enableRipple: 是否啟用水波紋效果，預設為 `true`。
///   - splashColor: 水波紋的顏色，預設為 `Colors.transparent`。
///   - highlightColor: 點擊後高亮顏色，預設為 `Colors.transparent`。
///   - borderColor: 圖片邊框顏色（可選）。
///   - borderWidth: 圖片邊框寬度（可選）。
///
/// Return：
///   返回一個 [Widget]，用於顯示圖片並可響應點擊事件，附帶或不附帶水波紋效果。
///
/// Example：
/// ```
/// clickableImage(
///   'example.png',
///   width: 100,
///   height: 100,
///   enableRipple: false,
///   borderColor: Colors.red,
///   borderWidth: 2.0,
///   onTap: () {
///     print('Image tapped!');
///   },
/// );
/// ```
Widget assetImage(
    String filename, {
      double? width,
      double? height,
      BoxFit? fit,
      Color? color,
      AlignmentGeometry alignment = Alignment.center,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
      Color borderColor = Colors.transparent,
      double borderWidth = 0.0,
    }) {
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: color != null // 根據是否有color來決定是否應用 ColorFilter
          ? ColorFiltered(
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        child: Image.asset(
          'assets/images/$filename',
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
        ),
      )
          : Image.asset( // 如果沒有傳入顏色，直接顯示圖片
        'assets/images/$filename',
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      ),
    ),
  );
}

///
/// 用於顯示圓形的資產圖片，支援自定義邊框、濾鏡顏色和點擊效果。
///
/// Params：
///   - filename: 圖片檔名，必填項，圖片需位於 `assets/images/` 目錄下
///   - width: 圓形圖片的寬度，選填
///   - height: 圓形圖片的高度，選填
///   - fit: 圖片的縮放與填充方式，選填，對應 BoxFit
///   - insertPadding: 圖片內部的填充邊距，選填，對應 EdgeInsetsGeometry
///   - alignment: 圖片對齊方式，預設為置中對齊
///   - onTap: 點擊事件，選填
///   - enableRipple: 是否啟用點擊波紋效果，預設為啟用
///   - splashColor: 點擊波紋效果的顏色，預設為透明
///   - highlightColor: 點擊時高亮顏色，預設為透明
///   - borderColor: 圓形圖片邊框的顏色，預設為透明
///   - borderWidth: 邊框寬度，預設為 0.0
///   - color: 顏色濾鏡，如果提供了該參數，將應用顏色濾鏡來覆蓋圖片的顏色，選填
///
/// 示範：
/// ```
/// CircleAssetsImage(
///   filename: 'example.png',
///   width: 100,
///   height: 100,
///   borderColor: Colors.red,
///   borderWidth: 2,
///   color: Colors.blue,
///   onTap: () {
///     print('圖片被點擊');
///   },
/// );
/// ```
Widget circleAssetsImage({
  required String filename,
  double? width,
  double? height,
  BoxFit? fit,
  EdgeInsetsGeometry? insertPadding,
  AlignmentGeometry alignment = Alignment.center,
  VoidCallback? onTap,
  bool enableRipple = true,
  Color bgColor = AppColors.bgColor,
  Color splashColor = Colors.transparent,
  Color highlightColor = Colors.transparent,
  Color borderColor = Colors.transparent,
  double borderWidth = 0.0,
  Color? color,
}) {
  Widget image = Container(
    padding: insertPadding,
    decoration: BoxDecoration(
      color: bgColor,
      shape: BoxShape.circle,
      border: Border.all(color: borderColor, width: borderWidth),
    ),
    child: color != null
        ? ColorFiltered(
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      child: Image.asset(
        'assets/images/$filename',
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      ),
    )
        : Image.asset(
      'assets/images/$filename',
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
    ),
  );

  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    borderRadius: BorderRadius.circular((width ?? height ?? 50) / 2),
    child: image,
  );
}

/// 從指定的 URL 載入網路圖片，並可選擇設置寬度、高度、適應方式、對齊方式，以及點擊事件。
/// 當網路圖片加載失敗時，顯示預設圖片。
/// 同時支援水波紋效果並可設置邊框顏色及寬度。
///
/// Params：
///   - imageUrl: 網路圖片的 URL。
///   - width: 圖片的寬度（可選）。
///   - height: 圖片的高度（可選）。
///   - fit: 圖片的 BoxFit 屬性，用於控制圖片如何適應容器（可選）。
///   - alignment: 圖片的對齊方式，預設為居中對齊。
///   - onTap: 點擊圖片時的回調函數（可選）。
///   - enableRipple: 是否啟用水波紋效果，預設為 `true`。
///   - splashColor: 水波紋的顏色，預設為 `Colors.transparent`。
///   - highlightColor: 點擊後高亮顏色，預設為 `Colors.transparent`。
///   - defaultImage: 網路圖片載入失敗時顯示的預設圖片檔案名稱。
///   - borderColor: 圖片邊框顏色（可選）。
///   - borderWidth: 圖片邊框寬度（可選）。
///
/// Return：
///   回傳一個 [Widget]，用於顯示網路圖片，並可響應點擊事件和水波紋效果。
///
/// Example：
/// ```dart
/// netImage(
///   'https://example.com/image.png',
///   width: 100,
///   height: 100,
///   defaultImage: 'default.png',
///   borderColor: Colors.red,
///   borderWidth: 2.0,
///   onTap: () {
///     print('Image tapped!');
///   },
///   enableRipple: true,
/// );
/// ```
Widget netImage(
    String imageUrl, {
      double? width,
      double? height,
      BoxFit? fit,
      AlignmentGeometry alignment = Alignment.center,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
      String defaultImage = 'ic_broken_image.png',
      Color borderColor = Colors.transparent,
      double borderWidth = 0.0,
    }) {
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(
            'assets/images/$defaultImage',
            width: width,
            height: height,
            fit: fit,
            alignment: alignment,
          );
        },
      ),
    ),
  );
}

/// 從指定的 URL 載入圓形網路圖片，並可選擇設置寬度、高度、外框顏色、外框寬度，以及點擊事件。
/// 當網路圖片加載失敗時，顯示預設圖片。
/// 同時支援水波紋效果。
///
/// Params：
///   - imageUrl: 網路圖片的 URL。
///   - width: 圖片的寬度（可選）。
///   - height: 圖片的高度（可選）。
///   - borderColor: 外框顏色（可選）。
///   - borderWidth: 外框寬度（可選）。
///   - fit: 圖片的 BoxFit 屬性，用於控制圖片如何適應容器（可選）。
///   - alignment: 圖片的對齊方式，預設為居中對齊。
///   - onTap: 點擊圖片時的回調函數（可選）。
///   - enableRipple: 是否啟用水波紋效果，預設為 `true`。
///   - splashColor: 水波紋的顏色，預設為 `Colors.transparent`。
///   - highlightColor: 點擊後高亮顏色，預設為 `Colors.transparent`。
///   - defaultImage: 網路圖片載入失敗時顯示的預設圖片檔案名稱。
///
/// Return：
///   回傳一個 [Widget]，用於顯示圓形網路圖片，並可響應點擊事件和水波紋效果。
///
/// Example：
/// ```dart
/// CircleNetImage(
///   imageUrl: 'https://example.com/image.png',
///   width: 100,
///   height: 100,
///   borderColor: Colors.blue,
///   borderWidth: 2.0,
///   defaultImage: 'default_avatar.png',
///   onTap: () {
///     print('Image tapped!');
///   },
///   enableRipple: true,
/// );
/// ```
Widget circleNetImage(
    String imageUrl, {
      double? width,
      double? height,
      Color borderColor = Colors.transparent,
      double borderWidth = 0.0,
      BoxFit? fit,
      AlignmentGeometry alignment = Alignment.center,
      VoidCallback? onTap,
      bool enableRipple = true,
      Color bgColor = AppColors.bgColor,
      Color splashColor = Colors.transparent,
      Color highlightColor = Colors.transparent,
      String defaultImage = 'default.png',
    }) {
  return InkWell(
    onTap: onTap,
    splashColor: enableRipple ? splashColor : Colors.transparent,
    highlightColor: enableRipple ? highlightColor : Colors.transparent,
    borderRadius: BorderRadius.circular((width ?? height ?? 50) / 2),
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              'assets/images/$defaultImage',
              width: width,
              height: height,
              fit: fit,
              alignment: alignment,
            );
          },
        ),
      ),
    ),
  );
}
