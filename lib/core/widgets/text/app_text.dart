import 'package:flutter/material.dart';

/// 通用文字元件 AppText
///
/// 支援文字樣式自訂、顏色、下劃線、刪除線、對齊方式、最大行數、點擊事件等功能。
///
/// ---
///
/// 使用範例：
/// ```
/// AppText(
///   text: '點我查看詳情',
///   color: Colors.blue,
///   underline: true,
///   onTap: () => print('點擊文字'),
/// )
/// ```
class AppText extends StatelessWidget {
  /// 文字內容
  final String text;

  /// 文字樣式（包含字體大小、字重等，預設 14sp）
  final TextStyle textStyle;

  /// 文字顏色（預設黑色）
  final Color color;

  /// 是否顯示底線（預設 false）
  final bool underline;

  /// 是否顯示刪除線（預設 false）
  final bool strikethrough;

  /// 文字對齊方式（預設居中）
  final TextAlign textAlign;

  /// 文字溢出處理方式（可選）
  final TextOverflow? overflow;

  /// 文字最大行數（可選）
  final int? maxLines;

  /// 點擊事件 callback（可選）
  final VoidCallback? onTap;

  const AppText({
    super.key,
    required this.text,
    this.textStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.25,
    ),
    this.color = Colors.black,
    this.underline = false,
    this.strikethrough = false,
    this.textAlign = TextAlign.center,
    this.overflow,
    this.maxLines,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = textStyle;

    // 設定文字裝飾（下劃線與刪除線）
    TextDecoration decoration;
    if (underline && strikethrough) {
      decoration = TextDecoration.combine([TextDecoration.underline, TextDecoration.lineThrough]);
    } else if (underline) {
      decoration = TextDecoration.underline;
    } else if (strikethrough) {
      decoration = TextDecoration.lineThrough;
    } else {
      decoration = TextDecoration.none;
    }

    final style = baseStyle.copyWith(
      color: color,
      decoration: decoration,
    );

    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
      ),
    );
  }
}
