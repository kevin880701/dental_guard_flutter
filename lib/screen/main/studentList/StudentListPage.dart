import 'package:dental_guard_flutter/widgets/common/ButtonWidgets.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/DropdownWidget.dart';
import 'package:dental_guard_flutter/widgets/customerWidget/InputWidget.dart';
import 'package:dental_guard_flutter/widgets/item/StudentItem.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/extensions/PageExtensions.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

class Student {
  final String name;
  final String id;

  Student(this.name, this.id);
}

@RoutePage()
class StudentListPage extends HookConsumerWidget {
  const StudentListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final List<Student> students = [
      Student('王小明', '14156983'),
      Student('李小華', '14156984'),
      Student('張大同', '14156985'),
      Student('陳小美', '14156986'),
      Student('劉小強', '14156987'),
    ];

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitleBar(title: '學生列表'),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: StudentItem(student: student),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}