import 'package:flutter/material.dart';

import '../../../../core/constants/app_resources.dart';
import '../../../../core/widgets/input/input_type.dart';
import '../../../../core/widgets/input/input_widget.dart';
import '../../../../core/widgets/input/password_input_widget.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../../core/widgets/text/text_theme.dart';

/// LoginInput - 自動切換 InputWidget 或 PasswordInputWidget
///
/// 使用範例：
/// ```
/// LoginInput(title: '帳號', inputType: InputType.USERNAME),
/// LoginInput(title: '密碼', inputType: InputType.PASSWORD),
/// ```
class AppInput extends StatelessWidget {
  final String title;
  final InputType inputType;
  final String? hintText;
  final bool isEdit;
  final String? Function(String)? validator;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const AppInput({
    super.key,
    required this.title,
    required this.inputType,
    this.hintText,
    this.isEdit = true,
    this.validator,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final Color borderColor = Colors.grey.shade300;
    final Color focusBorderColor = Colors.grey.shade600;
    final Color errorBorderColor = Colors.red;

    Widget inputField;
    if (inputType == InputType.PASSWORD) {
      inputField = PasswordInputWidget(
        isEdit: isEdit,
        hintText: hintText ?? '請輸入$title',
        validator: validator,
        controller: controller,
        onChanged: onChanged,
        isAllowSymbols: true,
        backgroundColor: Colors.white,
        borderColor: borderColor,
        focusBorderColor: focusBorderColor,
        errorBorderColor: errorBorderColor,
      );
    } else {
      inputField = InputWidget(
        isEdit: isEdit,
        hintText: hintText ?? AppStrings.plsEnter,
        inputType: inputType,
        validator: validator,
        controller: controller,
        onChanged: onChanged,
        isAllowSymbols: true,
        backgroundColor: isEdit? Colors.white: AppColors.disableGrey,
        borderColor: borderColor,
        focusBorderColor: focusBorderColor,
        errorBorderColor: errorBorderColor,
      );
    }

    return Container(
      padding: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(text: title, textStyle: titleMedium),
          const SizedBox(height: 8),
          inputField,
        ],
      ),
    );
  }
}
