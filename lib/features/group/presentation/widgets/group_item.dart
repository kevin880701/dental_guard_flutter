import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../../core/widgets/text/app_text.dart';
import '../../../organization/data/models/response/group/group_data.dart';
import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';

class GroupItem extends StatelessWidget {
  final GroupWithMemberCountData? groupWithCount;
  final VoidCallback? onTap;
  final VoidCallback? onEditTap;

  const GroupItem({
    super.key,
    required this.groupWithCount,
    this.onTap,
    this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    // 檢查是否有編輯權限
    bool canEdit() {
      if (groupWithCount == null) return false;
      final userType = groupWithCount!.type.toLowerCase();
      return userType == 'admin' || userType == 'manager';
    }
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderGrey, width: 2),
        ),
        child: (groupWithCount != null)
            ? Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: groupWithCount!.name,
                    textStyle: bodyLarge,
                    textAlign: TextAlign.left,
                  ),
                  if (groupWithCount != null) ...[
                    SizedBox(height: 4),
                    AppText(
                      text: '人數: ${groupWithCount?.memberCount} 人',
                      textStyle: bodySmall.copyWith(
                        color: AppColors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ],
              ),
            ),

            if (canEdit())
              AppIcon(
                icon: AppImages.editIcon,
                color: AppColors.primaryBlack,
                onTap: onEditTap,
              )
          ],
        )
            : SizedBox(),
      ),
    );
  }
}