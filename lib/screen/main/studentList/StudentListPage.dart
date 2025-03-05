import 'package:dental_guard_flutter/data/fakerData/StudentListFakerData.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/widgets/item/ClassItem.dart';
import 'package:dental_guard_flutter/widgets/item/StudentItem.dart';
import 'package:dental_guard_flutter/widgets/main/MainTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    final currentClassroomId = useState<int?>(null);

    useEffect(() {
      Future.microtask(() async {
        await studentListNotifier.getClassroomList();
      });
      return null;
    }, []);

    useEffect(() {
      Future.microtask(() async {
        if(currentClassroomId.value != null){
          await studentListNotifier.updateClassroomsId(studentListState.classroomList[currentClassroomId.value!].id);
          await studentListNotifier.getStudentList();
        }
      });
      return null;
    }, [currentClassroomId.value]);

    return BasePage(
      onWillPop: () async{
        if(currentClassroomId.value != null){
          currentClassroomId.value = null;
          studentListNotifier.clearStudentList();
        }else{
          SystemNavigator.pop();
        }
        return false;
      },
      backgroundColor: AppColors.bgColor,
      appBar: blackLightAppBar(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitleBar(title: '學生列表', isBack: currentClassroomId.value != null, onBackTap: (){
              if(currentClassroomId.value != null){
                currentClassroomId.value = null;
                studentListNotifier.clearStudentList();
              }else{
                SystemNavigator.pop();
              }
            }, onAddTap: (){
              AutoRouter.of(context).push(AddStudentRoute());
            },),
            (currentClassroomId.value != null)?
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: studentListState.studentList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: StudentItem(student: studentListState.studentList[index],onTap: (){
                      AutoRouter.of(context).push(StudentInfoRoute(student: studentListState.studentList[index]));
                    },),
                  );
                },
              ),
            )
                :
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: studentListState.classroomList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ClassItem(classroom: studentListState.classroomList[index], onTap:(){
                      currentClassroomId.value = index;
                    }),
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