import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/text/app_text.dart';
import '../../../organization/data/models/response/group/group_data.dart';

class GroupItem extends StatelessWidget {
  final GroupData? group;
  final VoidCallback? onTap;

  const GroupItem({
    super.key,
    required this.group,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderGrey,width: 2),
        ),
        child: (group!=null)?Row(
          children: [
            Expanded(
              child: AppText(
                text: group!.name,
                textStyle:bodyLarge,
                textAlign: TextAlign.left,
              ),
            ),
            // Arrow Icon
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ):SizedBox(),
      ),
    );
  }
}
