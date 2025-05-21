import 'package:flutter/material.dart';

/// 頭像元件 AvatarWidget
///
/// 支援顯示個人頭像圖片（可設定大小、背景、邊框）
/// 若圖片載入失敗則顯示預設圖片，
/// 並可顯示右下角的編輯按鈕（可自定 icon 與點擊事件）。
///
/// ---
///
/// 使用範例：
/// ```dart
/// AvatarWidget(
///   imageUrl: 'https://example.com/avatar.jpg',
///   size: 80,
///   borderColor: Colors.blue,
///   borderWidth: 2,
///   editIconWidget: Icon(Icons.edit, size: 16, color: Colors.white),
///   editBackgroundColor: Colors.blue,
///   onEditTap: () => print('Edit avatar clicked'),
///   defaultImageWidget: Icon(Icons.person, size: 40, color: Colors.grey),
/// )
/// ```
class AvatarWidget extends StatelessWidget {
  /// 頭像圖片的 URL 路徑
  final String imageUrl;

  /// 頭像大小（寬高），預設為 72
  final double size;

  /// 頭像背景色（載入前或透明區域背景），預設為白色
  final Color backgroundColor;

  /// 邊框顏色，預設為透明
  final Color borderColor;

  /// 邊框寬度，預設為 2.0
  final double borderWidth;

  /// 編輯按鈕的圖示 widget（放在右下角），若為 null 不顯示
  final Widget? editIconWidget;

  /// 編輯按鈕的背景色，預設為灰色
  final Color editBackgroundColor;

  /// 點擊編輯按鈕的回調函式
  final VoidCallback? onEditTap;

  /// 頭像載入失敗時顯示的預設圖片 widget
  final Widget? defaultImageWidget;

  const AvatarWidget({
    super.key,
    required this.imageUrl,
    this.size = 72.0,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderWidth = 2.0,
    this.editIconWidget,
    this.editBackgroundColor = Colors.grey,
    this.onEditTap,
    this.defaultImageWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 頭像本體區塊
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          child: ClipOval(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: size,
              height: size,
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: defaultImageWidget ??
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: size * 0.5,
                      ),
                );
              },
            ),
          ),
        ),
        // 編輯按鈕（右下角）
        if (onEditTap != null && editIconWidget != null)
          Positioned(
            right: 0,
            bottom: 0,
            child: InkWell(
              onTap: onEditTap,
              borderRadius: BorderRadius.circular(96),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: editBackgroundColor,
                ),
                child: editIconWidget,
              ),
            ),
          ),
      ],
    );
  }
}
