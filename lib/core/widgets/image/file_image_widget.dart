import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 本地圖片顯示元件 FileImageWidget
///
/// 用於顯示本地檔案圖片（Image.file 或 SvgPicture.file）。
/// 可設定尺寸、填充方式、點擊事件與水波紋效果。
///
/// ---
///
/// 使用範例：
/// ```
/// FileImageWidget(
///   filePath: '/storage/emulated/0/Download/sample.png',
///   width: 100,
///   height: 100,
///   fit: BoxFit.cover,
///   onTap: () => print('點擊圖片'),
///   enableRipple: true,
/// )
/// ```
///
/// 若圖片無法載入，會顯示預設 Icon(Icons.image_not_supported)。
class FileImageWidget extends StatelessWidget {
  /// 圖片檔案路徑
  final String filePath;

  /// 圖片寬度，預設為 24
  final double? width;

  /// 圖片高度，預設為 24
  final double? height;

  /// 圖片填充方式，預設為 BoxFit.contain
  final BoxFit? fit;

  /// 點擊事件的 callback（可選）
  final VoidCallback? onTap;

  /// 是否啟用水波紋點擊效果，預設為 false
  final bool enableRipple;

  const FileImageWidget({
    super.key,
    required this.filePath,
    this.width = 24.0,
    this.height = 24.0,
    this.fit = BoxFit.contain,
    this.onTap,
    this.enableRipple = false,
  });

  @override
  Widget build(BuildContext context) {
    // 判斷副檔名是否為 SVG
    final isSvg = filePath.toLowerCase().endsWith('.svg');

    Widget imageWidget;

    // 根據檔案類型顯示對應圖片
    if (isSvg) {
      imageWidget = SvgPicture.file(
        File(filePath),
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        placeholderBuilder: (context) => Icon(
          Icons.image_not_supported,
          size: width,
          color: Colors.grey,
        ),
      );
    } else {
      imageWidget = Image.file(
        File(filePath),
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: Icon(
              Icons.image_not_supported,
              size: width,
              color: Colors.grey,
            ),
          );
        },
      );
    }

    // 點擊事件包裝（支援 Ripple 效果）
    if (onTap != null && enableRipple) {
      imageWidget = Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: imageWidget,
        ),
      );
    } else if (onTap != null) {
      imageWidget = GestureDetector(
        onTap: onTap,
        child: imageWidget,
      );
    }

    return imageWidget;
  }
}
