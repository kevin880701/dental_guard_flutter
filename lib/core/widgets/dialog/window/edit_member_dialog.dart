import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/login/presentation/widgets/app_date_picker.dart';
import '../../../../features/login/presentation/widgets/app_input.dart';
import '../../button/app_button.dart';
import '../../input/input_type.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';
import '../widget/dialog_title_bar.dart';

class EditMemberDialog extends HookConsumerWidget {
  final void Function({
  required String name,
  }) onSubmit;

  const EditMemberDialog({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();

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
            const DialogTitleBar(title: AppStrings.editStudent,),
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
            const SizedBox(height: 12),
            AppButton(
              backgroundColor: AppColors.primaryBlack,
              text: AppStrings.confirm,
              onPressed: () {
                if (nameController.text.isEmpty) {
                  AppToast.showToast(message: '請完整填寫所有欄位');
                  return;
                }

                onSubmit(
                  name: nameController.text.trim(),
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
