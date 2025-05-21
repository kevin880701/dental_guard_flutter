import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../teeth_record/data/models/response/brushing_record/brushing_record_data.dart';

class BrushingRecordItem extends HookWidget {
  const BrushingRecordItem({
    super.key,
    required this.brushingRecordData,
    this.onTap,
  });

  final BrushingRecordData brushingRecordData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final createdAtFormatted = brushingRecordData.createdAt.formatDateTime();
    final score = brushingRecordData.analyzeResult.score;
    final isSuccess = brushingRecordData.analyzeResult.isSuccess;

    // 根據 isSuccess 與 score 設定顏色
    Color scoreColor;
    if (isSuccess == 0) {
      scoreColor = Colors.orange;
    } else if (score > 30) {
      scoreColor = Colors.red;
    } else {
      scoreColor = Colors.green;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: AppColors.borderGrey,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: createdAtFormatted,
                    textStyle: bodyMedium,
                  ),
                  SizedBox(height: 4),
                  AppText(
                    text: "牙菌斑佔比：$score",
                    textStyle: bodyMedium,
                      color: scoreColor,
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
