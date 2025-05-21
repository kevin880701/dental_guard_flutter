import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/app_resources.dart';
import '../../../utils/app_toast.dart';
import '../../button/app_button.dart';
import '../../input/input_manager.dart';
import '../../input/input_type.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';
import '../widget/dialog_title_bar.dart';

class BottomEditDialog extends HookConsumerWidget {
  const BottomEditDialog({
    super.key,
    required this.title,
    this.hintText,
    this.defaultText,
    this.buttonText = AppStrings.confirm,
    this.isAllowSymbols = false,
    this.isAllowEmoji = false,
    this.wordLimit = 20,
    this.inputType = InputType.ALL,
  });

  final String title;
  final String? hintText;
  final String? defaultText;
  final String buttonText;
  final bool isAllowSymbols;
  final bool isAllowEmoji;
  final int? wordLimit;
  final InputType inputType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController(text: defaultText);

    final inputFormatters = InputManager.getInputFormatters(
      inputType,
      maxLength: wordLimit,
      isAllowSymbols: isAllowSymbols,
      isAllowEmoji: isAllowEmoji,
    );
    final keyboardType = InputManager.getKeyboardType(inputType);

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DialogTitleBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: AppText(text: title),
            ),
            TextFormField(
              controller: textController,
              cursorColor: AppColors.primaryBlack,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              style: titleMedium.copyWith(color: AppColors.primaryBlack),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                filled: true,
                fillColor: AppColors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColors.primaryBlack),
                  borderRadius: BorderRadius.circular(96),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColors.primaryBlack),
                  borderRadius: BorderRadius.circular(96),
                ),
                hintText: hintText ?? "",
                hintStyle: bodyMedium.copyWith(color: AppColors.grey),
              ),
            ),
            SizedBox(height: 16),
            AppButton(
              text: buttonText,
              onPressed: () {
                final trimmedText = textController.text.trim();

                if (wordLimit != null && trimmedText.length > wordLimit!) {
                  AppToast.showToast(
                    message: '最多只能輸入 $wordLimit 個字元',
                    type: ToastType.ERROR,
                  );
                } else {
                  Navigator.pop(context, trimmedText); // 回傳輸入文字
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

