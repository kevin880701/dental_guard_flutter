import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/date/date_picker_widget.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../../core/widgets/text/text_theme.dart';

class LoginDatePicker extends StatelessWidget {
  final String title;
  final DateTime? value;
  final bool isEnable;
  final bool isValidate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final double minWidth;
  final TextStyle? textStyle;
  final Widget? icon;
  final ValueChanged<DateTime>? onDateSelected;

  const LoginDatePicker({
    super.key,
    required this.title,
    this.value,
    this.isEnable = true,
    this.isValidate = false,
    this.firstDate,
    this.lastDate,
    this.minWidth = 150,
    this.textStyle = const TextStyle(fontSize: 18.0, color: Colors.black),
    this.icon,
    this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(text: title, textStyle: titleMedium),
          const SizedBox(height: 8),
          DatePickerWidget(
            value: value,
            isEnable: isEnable,
            onDateSelected: onDateSelected,
            minWidth: minWidth,
            textStyle: textStyle?.copyWith(
                color: (value != null) ? Colors.black : AppColors.hintGrey),
            icon: icon,
            backgroundColor: isEnable ? Colors.white : Colors.grey.shade300,
            disableBackgroundColor: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}
