import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/login/presentation/widgets/login_date_picker.dart';
import '../../../../features/login/presentation/widgets/app_input.dart';
import '../../button/app_button.dart';
import '../../input/input_type.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';
import '../widget/dialog_title_bar.dart';

class AddMemberDialog extends HookConsumerWidget {
  final void Function({
  required String number,
  required String name,
  required DateTime birthday,
  required int gender,
  }) onSubmit;

  const AddMemberDialog({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberController = useTextEditingController();
    final nameController = useTextEditingController();
    final selectedDate = useState<DateTime?>(null);
    final gender = useState<int>(1); // 預設 1 為男生，0 為女生

    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(4.0),
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const DialogTitleBar(title: AppStrings.addStudent,),
            const SizedBox(height: 8),

            AppInput(
              title: AppStrings.studentNumber,
              hintText: AppStrings.plsEnterStudentNumber,
              inputType: InputType.ALL,
              controller: numberController,
              validator: (text) {
                return null;
              },
            ),
            const SizedBox(height: 8),
            AppInput(
              title: AppStrings.name,
              hintText: AppStrings.plsEnterName,
              inputType: InputType.ALL,
              controller: nameController,
              validator: (text) {
                return null;
              },
            ),
            const SizedBox(height: 8),
            LoginDatePicker(
              title: AppStrings.birthday,
              value: selectedDate.value,
              onDateSelected: (date) {
                selectedDate.value = date;
              },
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<int>(
                    title: AppText(text: '男'),
                    value: 1,
                    groupValue: gender.value,
                    onChanged: (value) => gender.value = value ?? 1,
                  ),
                ),
                Expanded(
                  child: RadioListTile<int>(
                    title: AppText(text: '女'),
                    value: 0,
                    groupValue: gender.value,
                    onChanged: (value) => gender.value = value ?? 0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            AppButton(
              backgroundColor: AppColors.primaryBlack,
              text: AppStrings.confirm,
              onPressed: () {
                if (numberController.text.isEmpty ||
                    nameController.text.isEmpty ||
                    selectedDate.value == null) {
                  AppToast.showToast(message: '請完整填寫所有欄位');
                  return;
                }

                onSubmit(
                  number: numberController.text.trim(),
                  name: nameController.text.trim(),
                  birthday: selectedDate.value!,
                  gender: gender.value,
                );

                Navigator.of(context).pop();
              },
            ),
          ],
        )),
      ),
    );
  }
}
