import 'package:dental_guard_flutter/data/fakerData/StudentListFakerData.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/widgets/item/StudentItem.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';

import 'StudentListProvider.dart';

@RoutePage()
class StudentListPage extends HookConsumerWidget {
  const StudentListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final studentListState = ref.watch(studentListProvider);
    final studentListNotifier = ref.read(studentListProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
        await studentListNotifier.getStudentList(classroomsId: 1);
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitleBar(title: '學生列表', onAddTap: (){
              AutoRouter.of(context).push(AddStudentRoute(classRoomId: 3));
            },),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: studentListState.studentList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: StudentItem(student: studentListState.studentList[index]),
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