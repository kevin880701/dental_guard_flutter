import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/data/response/teethRecords/TeethRecordsResponse.dart';
import 'package:dental_guard_flutter/resources/AppColors.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BrushingRecordItem extends HookWidget {
  const BrushingRecordItem({Key? key, required this.teethRecordsResponse})
      : super(key: key);

  final TeethRecordsResponse teethRecordsResponse;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ImageDetectRoute(
          studentId: teethRecordsResponse.student,
          teethRecord: teethRecordsResponse,
        ));
      },
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
            Text(
              teethRecordsResponse.dateTime,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            // Arrow Icon
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
