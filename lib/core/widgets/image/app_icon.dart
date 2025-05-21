import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 通用圖片或 SVG 圖示元件 AppIcon
///
/// 支援 .svg 與 .png/.jpg 圖示，可設定大小、顏色、背景、邊框、圓角與點擊事件。
///
/// ---
///
/// 使用範例：
/// ```
/// AppIcon(
///   iconName: 'assets/icons/calendar.svg',
///   size: 24,
///   color: Colors.blue,
///   backgroundColor: Colors.white,
///   borderColor: Colors.blueGrey,
///   borderWidth: 1,
///   borderRadius: 12,
///   padding: 4,
///   onTap: () {
///     print('Icon clicked');
///   },
///   tapColor: Colors.blue.withOpacity(0.2),
/// )
/// ```
///
/// 若資源不存在或錯誤，會顯示預設 `Icons.image_not_supported`。
class AppIcon extends StatelessWidget {
  /// 圖示路徑（支援 SVG 或 Image 格式）。
  final String icon;

  /// 圖示大小（寬與高），預設為 24。
  final double size;

  /// 圖示顏色（可套用於 SVG 或圖片 color 過濾）。
  final Color? color;

  /// 背景顏色，預設為透明。
  final Color backgroundColor;

  /// 邊框顏色，預設為透明。
  final Color borderColor;

  /// 邊框寬度，預設為 0。
  final double borderWidth;

  /// 邊框圓角，預設為 96（接近圓形）。
  final double borderRadius;

  /// 點擊事件（若無設定，則為靜態圖示）。
  final VoidCallback? onTap;

  /// 點擊特效顏色（水波紋顏色），預設為灰色 alpha。
  final Color? tapColor;

  /// 圖示 padding（內距），預設為 8。
  final double padding;

  const AppIcon({
    super.key,
    required this.icon,
    this.size = 24.0,
    this.color,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.0,
    this.borderRadius = 96.0,
    this.onTap,
    this.tapColor,
    this.padding = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    // 判斷是否為 SVG 格式
    final isSvg = icon.toLowerCase().endsWith('.svg');

    final iconWidget = isSvg
        ? SvgPicture.asset(
      icon,
      width: size,
      height: size,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
      fit: BoxFit.contain,
      placeholderBuilder: (context) => Icon(
        Icons.image_not_supported,
        size: size,
        color: color,
      ),
    )
        : Image.asset(
      icon,
      width: size,
      height: size,
      color: color,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return Icon(
          Icons.image_not_supported,
          size: size,
          color: color,
        );
      },
    );

    final content = Ink(
      width: size + padding * 2,
      height: size + padding * 2,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, width: borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: iconWidget,
    );

    return onTap != null
        ? Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: tapColor ?? Colors.grey.withAlpha(30),
        borderRadius: BorderRadius.circular(borderRadius),
        child: content,
      ),
    )
        : Material(
      color: Colors.transparent,
      child: content,
    );
  }
}
