import 'package:dental_guard_flutter/core/constants/app_colors.dart';
import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/widgets/text/app_text.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';

class MemberItem extends HookWidget {
  final UserInfoData user;
  final VoidCallback? onTap;

  const MemberItem({super.key, required this.user, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onTap!= null){
          onTap!();
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderGrey),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: user.name ?? "",
                    textStyle: bodyLarge,
                  ),
                  AppText(
                    text: user.number,
                    textStyle: bodyMedium,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ),
            if(onTap != null)...[
              Icon(Icons.chevron_right, color: Colors.grey),
            ]
          ],
        ),
      ),
    );
  }
}
