
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../organization/application/organization_controller.dart';

class GroupManageScreen extends HookConsumerWidget {
  const GroupManageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentClassroomId = useState<int?>(null);

    useEffect(() {
      Future.microtask(() async {
        ref.read(organizationControllerProvider.notifier).loadManagedGroups();
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleBar(
              title: AppStrings.classList,
              isBack: currentClassroomId.value != null,
              // onAddTap: () {
              //   if (currentClassroomId.value != null) {
              //     AutoRouter.of(context).push(AddStudentRoute());
              //   } else {
              //     AutoRouter.of(context).push(AddClassRoute());
              //   }
              // },
            ),
            // (currentClassroomId.value != null)
            //     ? Expanded(
            //         child: ListView.builder(
            //           padding: EdgeInsets.all(8.0),
            //           itemCount: studentListState.studentList.length,
            //           itemBuilder: (context, index) {
            //             return Padding(
            //               padding: const EdgeInsets.symmetric(vertical: 4.0),
            //               child: StudentItem(
            //                 student: studentListState.studentList[index],
            //                 onTap: () {
            //                   AutoRouter.of(context).push(StudentInfoRoute(
            //                       student:
            //                           studentListState.studentList[index]));
            //                 },
            //               ),
            //             );
            //           },
            //         ),
            //       )
            //     : Expanded(
            //         child: ListView.builder(
            //           padding: EdgeInsets.all(8.0),
            //           itemCount: studentListState.classroomList.length,
            //           itemBuilder: (context, index) {
            //             return Container(
            //               padding: const EdgeInsets.symmetric(vertical: 4.0),
            //               child: ClassItem(
            //                   classroom: studentListState.classroomList[index],
            //                   onTap: () {
            //                     currentClassroomId.value = index;
            //                   }),
            //             );
            //           },
            //         ),
            //       ),
          ],
        ),
      ),
    );
  }
}
