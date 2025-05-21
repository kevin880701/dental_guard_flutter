import 'package:flutter/material.dart';

/// 文字頭像元件 FontAvatarWidget
///
/// 用於使用者沒有頭像圖片時，以文字縮寫顯示頭像，常用於聯絡人列表、聊天頭像等。
/// 支援背景色、邊框、字體顏色、縮寫長度限制，以及右下角編輯圖示與點擊事件。
///
/// ---
///
/// 使用範例：
/// ```
/// FontAvatarWidget(
///   text: 'Kevin Liu',
///   size: 80,
///   maxInitialsLength: 2,
///   backgroundColor: Colors.blue,
///   initialsColor: Colors.white,
///   borderColor: Colors.white,
///   editIconWidget: Icon(Icons.edit, size: 16, color: Colors.white),
///   editBackgroundColor: Colors.black,
///   onEditTap: () => print('點擊編輯頭像'),
/// )
/// ```
class FontAvatarWidget extends StatelessWidget {
  /// 顯示的文字來源（通常是名字）
  final String text;

  /// 顯示幾個字元作為縮寫，預設最多 2 個字
  final int maxInitialsLength;

  /// 頭像尺寸（寬與高），預設為 72
  final double size;

  /// 頭像背景顏色，預設為灰色
  final Color backgroundColor;

  /// 文字縮寫顏色，預設為白色
  final Color initialsColor;

  /// 編輯按鈕圖示 widget（可選）
  final Widget? editIconWidget;

  /// 編輯按鈕背景顏色，預設為灰色
  final Color editBackgroundColor;

  /// 頭像邊框顏色，預設為透明
  final Color borderColor;

  /// 點擊編輯按鈕時的 callback（可選）
  final VoidCallback? onEditTap;

  const FontAvatarWidget({
    super.key,
    required this.text,
    this.maxInitialsLength = 2,
    this.size = 72.0,
    this.backgroundColor = Colors.grey,
    this.initialsColor = Colors.white,
    this.editIconWidget,
    this.editBackgroundColor = Colors.grey,
    this.borderColor = Colors.transparent,
    this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    // 根據 maxInitialsLength 取縮寫
    final displayedInitials = text.length > maxInitialsLength
        ? text.substring(0, maxInitialsLength)
        : text;

    // 根據縮寫長度自適應文字大小
    double fontSize = size / (displayedInitials.length > 1 ? 3 : 2.5);

    return Stack(
      children: [
        // 頭像本體
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text(
              displayedInitials,
              style: TextStyle(
                color: initialsColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // 編輯按鈕
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
