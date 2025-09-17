import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../features/login/presentation/widgets/app_date_picker.dart';
import '../../button/app_button.dart';
import '../../dropdown/app_dropdown.dart';
import '../widget/dialog_title_bar.dart';

enum ExportFormat {
  utf8Bom('UTF-8 with BOM', 'utf8_bom'),
  ansi('ANSI', 'ansi'),
  utf8('UTF-8', 'utf8');

  const ExportFormat(this.displayName, this.value);
  final String displayName;
  final String value;
}

class DownloadReportDialog extends HookConsumerWidget {
  final void Function({
  required DateTime startTime,
  required DateTime endTime,
  required ExportFormat format,
  }) onSubmit;

  const DownloadReportDialog({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startTime = useState<DateTime?>(null);
    final endTime = useState<DateTime?>(null);
    final selectedFormatIndex = useState<int>(0);

    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DialogTitleBar(
                  title: AppStrings.reportDownloadTimeRange,
                ),
                const SizedBox(height: 12),
                AppDatePicker(
                  title: AppStrings.startTime,
                  value: startTime.value,
                  onDateSelected: (date) {
                    startTime.value = date;
                  },
                ),
                const SizedBox(height: 12),
                AppDatePicker(
                  title: AppStrings.endTime,
                  value: endTime.value,
                  onDateSelected: (date) {
                    endTime.value = date;
                  },
                ),
                const SizedBox(height: 12),
                Text(
                  '檔案格式',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryBlack,
                  ),
                ),
                const SizedBox(height: 8),
                AppDropdown(
                  items: ExportFormat.values.map((e) => e.displayName).toList(),
                  selectedValue: selectedFormatIndex,
                  onChanged: (index, value) {
                    selectedFormatIndex.value = index;
                  },
                  backgroundColor: Colors.grey[50]!,
                  borderColor: AppColors.borderGrey,
                  iconColor: AppColors.primaryBlack,
                  selectedTextStyle:  TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryBlack,
                  ),
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryBlack,
                  ),
                  itemTextStyle: TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryBlack,
                  ),
                  menuBorderColor: AppColors.borderGrey,
                  menuBackgroundColor: Colors.white,
                  menuElevation: 4,
                ),
                const SizedBox(height: 16),
                Align(alignment: Alignment.center,child: AppButton(
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
                      format: ExportFormat.values[selectedFormatIndex.value],
                    );

                    Navigator.of(context).pop();
                  },
                ),)
                ,
              ],
            )),
      ),
    );
  }
}
