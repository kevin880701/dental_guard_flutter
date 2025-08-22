import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/login/presentation/widgets/app_date_picker.dart';
import '../../button/app_button.dart';
import '../widget/dialog_title_bar.dart';

class DownloadReportDialog extends HookConsumerWidget {
  final void Function({
    required DateTime startTime,
    required DateTime endTime,
  }) onSubmit;

  const DownloadReportDialog({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startTime = useState<DateTime?>(null);
    final endTime = useState<DateTime?>(null);

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
                const DialogTitleBar(
                  title: AppStrings.reportDownloadTimeRange,
                ),
                const SizedBox(height: 8),
                AppDatePicker(
                  title: AppStrings.startTime,
                  value: startTime.value,
                  onDateSelected: (date) {
                    startTime.value = date;
                  },
                ),
                const SizedBox(height: 8),
                AppDatePicker(
                  title: AppStrings.endTime,
                  value: endTime.value,
                  onDateSelected: (date) {
                    endTime.value = date;
                  },
                ),
                const SizedBox(height: 12),
                AppButton(
                  backgroundColor: AppColors.primaryBlack,
                  text: AppStrings.confirm,
                  onPressed: () {
                    if (startTime.value == null || endTime.value == null) {
                      AppToast.showToast(message: '請完整填寫所有欄位');
                      return;
                    }

                    onSubmit(
                      startTime: startTime.value!,
                      endTime: endTime.value!,
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
