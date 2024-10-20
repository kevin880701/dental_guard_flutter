import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/data/response/classroomList/ClassroomListResponse.dart';
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ClassItem extends HookWidget {
  final ClassroomListResponse classroom;
  final VoidCallback onTap;

  const ClassItem({Key? key, required this.classroom, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                '${classroom.grade}${classroom.className}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            // Arrow Icon
            Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
