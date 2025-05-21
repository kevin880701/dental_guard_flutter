import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 通用資源圖片顯示元件 AssetImageWidget
///
/// 支援 SVG 與 Image.asset 圖片顯示，並可設定尺寸、填充方式、對齊方式、點擊事件與水波紋效果。
///
/// ---
///
/// 使用範例：
/// ```dart
/// AssetImageWidget(
///   image: 'assets/icons/sample.png',
///   width: 100,
///   height: 100,
///   fit: BoxFit.contain,
///   onTap: () => print('圖片點擊'),
///   enableRipple: true,
/// )
/// ```
///
/// 若圖片為 `.svg` 則會使用 `SvgPicture.asset` 載入，否則使用 `Image.asset`。
class AssetImageWidget extends StatelessWidget {
  /// 圖片資源路徑（支援 `.svg` 或一般圖片格式）。
  final String image;

  /// 圖片寬度（可選）。
  final double? width;

  /// 圖片高度（可選）。
  final double? height;

  /// 圖片的填充方式，預設為 `BoxFit.cover`。
  final BoxFit? fit;

  /// 圖片對齊方式，預設為 `Alignment.center`。
  final AlignmentGeometry alignment;

  /// 點擊事件回調函式（可選）。
  final VoidCallback? onTap;

  /// 是否啟用水波紋效果，預設為 false。
  final bool enableRipple;

  const AssetImageWidget({
    super.key,
    required this.image,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.onTap,
    this.enableRipple = false,
  });

  @override
  Widget build(BuildContext context) {
    // 判斷是否為 SVG 圖檔
    final isSvg = image.toLowerCase().endsWith('.svg');

    // 圖片元件載入邏輯
    Widget imageWidget = isSvg
        ? SvgPicture.asset(
      image,
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
      alignment: alignment,
      placeholderBuilder: (context) => Icon(Icons.image),
    )
        : Image.asset(
      image,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
    );

    // 包裝點擊事件與 Ripple 效果
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
