import 'package:flutter/material.dart';

/// 自訂樣式的 Checkbox 元件 AppCheckBox
///
/// 可客製化尺寸、邊框、顏色、圖示、是否啟用狀態等。
/// 適用於表單選項、設定開關、自訂 UI 元件等場景。
///
/// ---
///
/// 使用範例：
/// ```
/// AppCheckBox(
///   value: true,
///   onChanged: (val) => print('切換狀態: $val'),
///   size: 28,
///   borderRadius: 4,
///   borderColor: Colors.grey,
///   checkedColor: Colors.green,
///   uncheckedColor: Colors.white,
///   checkIconColor: Colors.white,
/// )
/// ```
class AppCheckBox extends StatelessWidget {
  /// 勾選狀態
  final bool value;

  /// 狀態變更 callback
  final ValueChanged<bool>? onChanged;

  /// 邊角圓弧半徑，預設 6
  final double borderRadius;

  /// checkbox 尺寸（寬與高），預設 24
  final double size;

  /// 邊框寬度，預設 1.5
  final double borderWidth;

  /// 邊框顏色，預設灰色
  final Color borderColor;

  /// 勾選時背景色，預設藍色
  final Color checkedColor;

  /// 未勾選時背景色，預設白色
  final Color uncheckedColor;

  /// 勾選圖示的顏色，預設白色
  final Color checkIconColor;

  /// 是否啟用互動，預設 true
  final bool enabled;

  const AppCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    this.borderRadius = 6.0,
    this.size = 24.0,
    this.borderWidth = 1.5,
    this.borderColor = Colors.grey,
    this.checkedColor = Colors.blue,
    this.uncheckedColor = Colors.white,
    this.checkIconColor = Colors.white,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = value ? checkedColor : uncheckedColor;

    return Semantics(
      checked: value,
      child: InkWell(
        onTap: enabled ? () => onChanged?.call(!value) : null,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          child: value
              ? Center(
            child: Icon(
              Icons.check,
              color: checkIconColor,
              size: size * 0.75,
            ),
          )
              : null,
        ),
      ),
    );
  }
}
