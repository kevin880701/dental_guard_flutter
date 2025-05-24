import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/constants/app_images.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/image/app_icon.dart';
import '../../../../core/widgets/text/app_text.dart';

class InfoItem {
  final String title;
  final String? trailingText;
  final bool showArrow;
  final VoidCallback? onTap;

  InfoItem({
    required this.title,
    this.trailingText,
    this.showArrow = false,
    this.onTap,
  });
}

class InfoSection extends StatelessWidget {
  final String sectionTitle;
  final List<InfoItem> items;

  const InfoSection({
    super.key,
    required this.sectionTitle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: AppText(
            text: sectionTitle,
            textStyle: titleMedium,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.bgColor,
              width: 1,
            ),
          ),
          child: Column(
            children: items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              final isLast = index == items.length - 1;

              return InkWell(
                onTap: item.onTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    border: isLast
                        ? null
                        : const Border(
                      bottom: BorderSide(
                        color: AppColors.backgroundColor,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText(
                          text: item.title,
                          textStyle: bodyMedium,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      if (item.trailingText != null)
                        AppText(
                          text: item.trailingText!,
                          textStyle: bodyMedium.copyWith(fontWeight: FontWeight.bold),
                        ),
                      if (item.showArrow)
                        AppIcon(icon:AppImages.arrowRightIcon, color: AppColors.primaryBlack),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        )

      ],
    );
  }
}
