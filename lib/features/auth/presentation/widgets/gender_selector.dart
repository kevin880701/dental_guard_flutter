import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/params.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../../core/widgets/text/text_theme.dart';

class GenderSelector extends StatelessWidget {
  final ValueNotifier<String> selectedGender;

  const GenderSelector({super.key, required this.selectedGender});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: selectedGender,
      builder: (context, value, _) {
        return Container(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(text: AppStrings.gender, textStyle: titleMedium),
              const SizedBox(height: 8),
              Row(
                children: genderList.map((gender) {
                  final isSelected = value == gender;

                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () => selectedGender.value = gender,
                      child: Row(
                        children: [
                          RadioTheme(
                            data: RadioThemeData(
                              fillColor: WidgetStateProperty.resolveWith((states) {
                                if (states.contains(WidgetState.selected)) {
                                  return AppColors.primaryBlack;
                                }
                                return AppColors.disableGrey;
                              }),
                            ),
                            child: Radio<String>(
                              value: gender,
                              groupValue: value,
                              onChanged: (val) {
                                if (val != null) selectedGender.value = val;
                              },
                            ),
                          ),
                          AppText(
                            text: gender,
                            color: AppColors.primaryBlack,
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
