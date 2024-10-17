import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/resources/AppColors.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
class BrushingRecord {
  final int recordId;
  final int accountId;
  final int studentId;
  final String imagePath;
  final String date;
  final double percent;

  BrushingRecord({
    required this.recordId,
    required this.accountId,
    required this.studentId,
    required this.imagePath,
    required this.date,
    required this.percent,
  });
}

final brushingRecords = [
  BrushingRecord(
    recordId: 1,
    accountId: 1001,
    studentId: 123,
    imagePath: 'assets/images/student1.png',
    date: '2024/01/01 08:30:45', // 字串格式的日期和時間
    percent: 30.5,  // 牙菌斑含量
  ),
  BrushingRecord(
    recordId: 2,
    accountId: 1002,
    studentId: 124,
    imagePath: 'assets/images/student2.png',
    date: '2024/01/02 18:45:00',
    percent: 20.0,
  ),
  BrushingRecord(
    recordId: 3,
    accountId: 1003,
    studentId: 125,
    imagePath: 'assets/images/student3.png',
    date: '2024/01/03 14:22:10',
    percent: 50.7,
  ),
];

class BrushingRecordItem extends HookWidget {

  const BrushingRecordItem({Key? key,required this.brushingRecord}) : super(key: key);

  final BrushingRecord brushingRecord;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(ImageDetectRoute());
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
              brushingRecord.date,
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
