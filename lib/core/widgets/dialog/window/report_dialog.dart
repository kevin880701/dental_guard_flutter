import 'package:dental_guard_flutter/core/widgets/size/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../features/teeth_record/domain/entity/report_data.dart';
import '../../../constants/app_colors.dart';
import '../../button/app_button.dart';
import '../../shape/line_widget.dart';
import '../../text/app_text.dart';
import '../../text/text_theme.dart';
import '../widget/dialog_title_bar.dart';

class ReportDialog extends StatefulWidget {
  final List<String> fieldTitle;
  final List<ReportData> data;
  final String? title;

  const ReportDialog({
    Key? key,
    required this.fieldTitle,
    required this.data,
    this.title,
  }) : super(key: key);

  @override
  State<ReportDialog> createState() => _ReportDialogState();
}

class _ReportDialogState extends State<ReportDialog> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      insetPadding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.05,
          vertical: screenHeight(context) * 0.1),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          children: [
            DialogTitleBar(
              title: widget.title,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: AppText(
                    text: widget.fieldTitle[0],
                    textStyle: bodyMedium.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                ...widget.fieldTitle.sublist(1).map((f) => Expanded(
                  child: AppText(
                    text: f,
                    textStyle: bodyMedium.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )),
              ],
            ),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 資料列
                    ...widget.data.asMap().entries.map(
                          (entry) {
                        final i = entry.key;
                        final d = entry.value;
                        final isSelected = selectedIndex == i;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = i;
                            });
                          },
                          child: Container(
                            color: isSelected
                                ? AppColors.primaryBlue.withOpacity(0.12) // 淡藍色
                                : Colors.transparent,
                            child: Column(
                              children: [
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppText(
                                        text: d.index,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    ...d.values.map(
                                          (v) => Expanded(
                                        child: AppText(
                                          text: v,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                LineWidget(
                                  direction: LineDirection.horizontal,
                                  isDashed: true,
                                  color: AppColors.borderGrey,
                                  thickness: 1,
                                  dashLength: 12,
                                  gap: 6,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
