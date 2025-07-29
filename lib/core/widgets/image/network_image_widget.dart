import 'package:flutter/material.dart';

/// 網路圖片元件 NetworkImageWidget
///
/// 提供網路圖片顯示功能，支援 loading 狀態、錯誤 fallback 圖示、圓角、邊框、點擊事件及 Ripple 效果。
///
/// ---
///
/// 使用範例：
/// ```
/// NetworkImageWidget(
///   imageUrl: 'https://example.com/sample.jpg',
///   width: 100,
///   height: 100,
///   fit: BoxFit.cover,
///   borderRadius: 12,
///   borderColor: Colors.grey,
///   borderWidth: 1,
///   enableRipple: true,
///   onTap: () {
///     print('圖片被點擊');
///   },
/// )
/// ```
class NetworkImageWidget extends StatelessWidget {
  /// 網路圖片 URL
  final String imageUrl;

  /// 圖片寬度
  final double? width;

  /// 圖片高度
  final double? height;

  /// 圖片填充方式（預設 BoxFit.cover）
  final BoxFit? fit;

  /// 點擊事件 callback（可選）
  final VoidCallback? onTap;

  /// 是否啟用 Ripple 水波紋效果（預設 false）
  final bool enableRipple;

  /// 圖片邊框顏色（預設 transparent）
  final Color borderColor;

  /// 圖片邊框寬度（預設 0.0）
  final double borderWidth;

  /// 圓角半徑（預設 0.0）
  final double borderRadius;

  const NetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.onTap,
    this.enableRipple = false,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.0,
    this.borderRadius = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    // 主要圖片元件（含載入與錯誤處理）
    Widget imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            child: const Icon(
              Icons.image_not_supported,
              size: 24.0,
              color: Colors.grey,
            ),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: SizedBox(
              width: 24.0,
              height: 24.0,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
              ),
            ),
          );
        },
      ),
    );

    // 加入邊框裝飾
    imageWidget = Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      clipBehavior: Clip.hardEdge,
      child: imageWidget,
    );

    // 點擊事件包裝（含 Ripple 效果）
    if (onTap != null && enableRipple) {
      imageWidget = Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(borderRadius),
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
