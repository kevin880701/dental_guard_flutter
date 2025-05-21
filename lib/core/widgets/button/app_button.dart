import 'package:flutter/material.dart';

/// 通用自訂按鈕元件 AppButton
///
/// 支援左右 Icon、禁用狀態、邊框、陰影、圓角等客製化樣式。
/// 適合用於表單、操作按鈕、CTA 按鈕等情境。
///
/// 使用範例：
/// ```dart
/// AppButton(
///   text: '送出',
///   onPressed: () => print('點擊送出'),
///   backgroundColor: Colors.blue,
///   borderRadius: 12,
///   borderWidth: 2,
///   fontColor: Colors.white,
///   leftIcon: Icon(Icons.send, size: 16, color: Colors.white),
/// )
/// ```
class AppButton extends StatelessWidget {
  /// 按鈕文字
  final String text;

  /// 點擊事件 callback（可為 null）
  final VoidCallback? onPressed;

  /// 背景顏色（預設黑色）
  final Color backgroundColor;

  /// 文字顏色（預設白色）
  final Color fontColor;

  /// 邊框顏色（預設透明）
  final Color borderColor;

  /// 邊框粗度（預設 1）
  final double borderWidth;

  /// 圓角（預設 8）
  final double borderRadius;

  /// 是否顯示陰影（預設 false）
  final bool hasShadow;

  /// 按鈕寬度（可選，若不設定則自適應）
  final double? width;

  /// 點擊時水波紋效果顏色（可選）
  final Color? tapColor;

  /// 是否為停用狀態（預設 false）
  final bool isDisabled;

  /// 停用背景色（預設灰色）
  final Color disabledBgColor;

  /// 停用邊框顏色（預設灰色）
  final Color disabledBorderColor;

  /// 停用文字顏色（預設白色）
  final Color disabledFontColor;

  /// 文字樣式
  final TextStyle textStyle;

  /// 左側 Icon（可選）
  final Widget? leftIcon;

  /// 右側 Icon（可選）
  final Widget? rightIcon;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor = Colors.black,
    this.fontColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.borderWidth = 1.0,
    this.borderRadius = 8.0,
    this.hasShadow = false,
    this.width,
    this.tapColor,
    this.isDisabled = false,
    this.disabledBgColor = Colors.grey,
    this.disabledBorderColor = Colors.grey,
    this.disabledFontColor = Colors.white,
    this.textStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 1.25,
    ),
    this.leftIcon,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    final Color currentBgColor = isDisabled ? disabledBgColor : backgroundColor;
    final Color currentBorderColor = isDisabled ? disabledBorderColor : borderColor;
    final Color currentFontColor = isDisabled ? disabledFontColor : fontColor;

    final List<BoxShadow> boxShadow = hasShadow
        ? [
      BoxShadow(
        color: Colors.black.withOpacity(0.15),
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ]
        : [];

    final Widget buttonContent = InkWell(
      onTap: isDisabled ? null : onPressed,
      splashColor: tapColor ?? Theme.of(context).splashColor,
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: currentBgColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: currentBorderColor,
            width: borderWidth,
          ),
          boxShadow: boxShadow,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftIcon != null) ...[
              leftIcon!,
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: textStyle.copyWith(color: currentFontColor),
            ),
            if (rightIcon != null) ...[
              const SizedBox(width: 8),
              rightIcon!,
            ],
          ],
        ),
      ),
    );

    return width != null
        ? SizedBox(width: width, child: buttonContent)
        : IntrinsicWidth(child: buttonContent);
  }
}
