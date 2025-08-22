import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/text/app_text.dart';

class SmoothLineChartIndicator extends StatelessWidget {
  const SmoothLineChartIndicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.width = 16,
    this.height = 2,
    this.textColor = AppColors.primaryBlack,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double width;
  final double height;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        AppText(text:text, textStyle: labelSmall),
      ],
    );
  }
}
