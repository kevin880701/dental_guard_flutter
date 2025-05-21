import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

import '../../constants/app_colors.dart';

/// 日期與時間選擇器元件 DatePickerWidget
///
/// 用於顯示選取的日期與時間，並提供點擊後選擇功能。
/// 可自訂背景顏色、文字樣式、icon圖示、啟用狀態與最小寬度。
///
/// ---
///
/// 使用方式：
/// ```
/// DatePickerWidget(
///   value: DateTime.now(),
///   onDateSelected: (dateTime) {
///     print('使用者選擇的日期時間為: $dateTime');
///   },
///   backgroundColor: Colors.white,
///   disableBackgroundColor: Colors.grey.shade300,
///   textStyle: TextStyle(fontSize: 14, color: Colors.black87),
///   icon: Icon(Icons.date_range, color: Colors.blue),
///   minWidth: 150,
/// )
/// ```
class DatePickerWidget extends HookConsumerWidget {
  /// 啟用狀態下的背景顏色，預設為白色。
  final Color backgroundColor;

  /// 禁用狀態下的背景顏色，預設為灰色。
  final Color disableBackgroundColor;

  /// 預設顯示的日期時間值。
  final DateTime? value;

  /// 當選擇新的日期時間時會回傳的 callback。
  final ValueChanged<DateTime>? onDateSelected;

  /// 是否可點擊選擇日期時間，預設為 true。
  final bool isEnable;

  /// 顯示在欄位中的文字樣式，預設為黑色文字。
  final TextStyle? textStyle;

  /// 日期欄右側的圖示，可自定義；預設為 `Icons.calendar_month`。
  final Widget? icon;

  /// 設定欄位最小寬度，預設為 100。
  final double minWidth;

  /// 建構函式
  const DatePickerWidget({
    Key? key,
    this.backgroundColor = Colors.white,
    this.disableBackgroundColor = Colors.grey,
    this.value,
    this.onDateSelected,
    this.isEnable = true,
    this.textStyle,
    this.icon,
    this.minWidth = 100.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDateTime = useState<DateTime?>(value);
    final formatter = DateFormat('yyyy-MM-dd HH:mm');

    /// 彈出日期與時間選擇器
    Future<void> _selectDateTime() async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDateTime.value ?? DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );

      if (pickedDate != null) {
        final TimeOfDay? pickedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(selectedDateTime.value ?? DateTime.now()),
        );

        if (pickedTime != null) {
          final DateTime newDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
          selectedDateTime.value = newDateTime;
          if (onDateSelected != null) {
            onDateSelected!(newDateTime);
          }
        }
      }
    }

    return GestureDetector(
      onTap: isEnable ? _selectDateTime : null,
      child: Container(
        constraints: BoxConstraints(minWidth: minWidth),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isEnable ? backgroundColor : disableBackgroundColor,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                selectedDateTime.value != null
                    ? formatter.format(selectedDateTime.value!)
                    : '－',
                style: textStyle ?? TextStyle(color: (selectedDateTime.value != null)?Colors.black:AppColors.disableGrey),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            icon ?? const Icon(Icons.calendar_month, color: Colors.grey, size: 20),
          ],
        ),
      ),
    );
  }
}
