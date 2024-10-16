import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';
import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';
import 'package:dental_guard_flutter/widgets/dialog/widget/DialogTitleBar.dart';

class BottomEditDialog extends HookConsumerWidget {
  const BottomEditDialog({
    super.key,
    required this.title,
    this.hintText,
    this.defaultText,
    required this.buttonText,
    this.onTap,
    this.isValid,
    this.invalidText = AppTexts.inputFieldCannotEmpty,
    this.inputFormatters,
    this.keyboardType,
    this.isSymbols = false,
    this.wordLimit = 20,
  });

  final String title;
  final String? hintText;
  final String? defaultText;
  final String buttonText;
  final void Function(String text)? onTap;
  final bool Function(String text)? isValid;
  final String invalidText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool isSymbols;
  final int? wordLimit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController(text: defaultText);

    // 如果wordLimit有值，添加LengthLimitingTextInputFormatter
    final List<TextInputFormatter> formatters = [
      if (inputFormatters != null) ...inputFormatters!,
      if (wordLimit != null) LengthLimitingTextInputFormatter(wordLimit),
    ];

    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.fromLTRB(16.sp, 20.sp, 16.sp, 20.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DialogTitleBar(),
            SizedBox(
              height: 16.sp,
            ),
            customText(title, fontWeight: FontWeight.w600, fontSize: 16.sp, overflow: null, textAlign: TextAlign.center),
            SizedBox(
              height: 16.sp,
            ),
            TextFormField(
              controller: textController,
              cursorColor: AppColors.black,
              keyboardType: keyboardType,
              inputFormatters: formatters,
              style: TextStyle(
                color: AppColors.primaryBlack,
                fontSize: 16.sp,
                fontFamily: 'PingFang TC',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(24.sp, 12.sp, 24.sp, 12.sp),
                  filled: true,
                  fillColor: AppColors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.sp, color: AppColors.primaryBlack),
                    borderRadius: BorderRadius.circular(96.sp),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.sp, color: AppColors.primaryBlack),
                    borderRadius: BorderRadius.circular(96.sp),
                  ),
                  hintText: hintText ?? "",
                  hintStyle: TextStyle(
                      fontSize: 14.sp, fontFamily: 'PingFang TC', fontWeight: FontWeight.w400, color: AppColors.grey)),
            ),
            SizedBox(
              height: 32.sp,
            ),
            roundedButton(
              radius: 12.sp,
              text: buttonText,
              onTap: () {
                // 去除頭尾的空格
                final trimmedText = textController.text.trim();

                // 修改正則表達式，允許空格符號，但不允許整個字串為空
                final regExp = isSymbols
                    ? RegExp(r'^[\u4e00-\u9fa5a-zA-Z0-9!@#\$%^&*(),.?":{}|<> ]+$')
                    : RegExp(r'^[\u4e00-\u9fa5a-zA-Z0-9 ]+$');

                // 檢查去除空格後是否為空
                if (trimmedText.isEmpty) {
                  showErrorToast(context: context, text: '輸入不能為空或只有空格');
                }
                // 檢查非法字符
                else if (!regExp.hasMatch(trimmedText)) {  // 使用去除頭尾空格後的字串進行檢查
                  showErrorToast(context: context, text: '輸入包含非法字符');
                }
                else if (isValid != null && !isValid!(trimmedText)) {
                  showErrorToast(context: context, text: invalidText);
                }
                // 檢查字數限制
                else if (wordLimit != null && trimmedText.length > wordLimit!) {
                  showErrorToast(context: context, text: '最多只能輸入 $wordLimit 個字元');
                }
                // 所有條件符合，則執行 onTap
                else {
                  Navigator.pop(context, trimmedText);
                  if (onTap != null) {
                    onTap!(trimmedText);  // 傳遞去除頭尾空格後的字串
                  }
                }
              },
              bgColor: AppColors.black,
              fontColor: AppColors.white,
              borderColor: AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
