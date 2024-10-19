import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/data/response/studentList/StudentListResponse.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StudentItem extends HookWidget {
  final StudentListResponse student;

  const StudentItem({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(StudentInfoRoute(student: student));
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
            // User Avatar
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            SizedBox(width: 12), // Spacing between avatar and text
            // Column for Name and ID
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    student.user.username,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    student.user.id.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
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
