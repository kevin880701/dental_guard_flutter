import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: (group!=null)?Row(
          children: [
            Expanded(
              child: Text(
                group!.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
