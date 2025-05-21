import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../organization/application/organization_controller.dart';
import '../widgets/GroupItem.dart';

class GroupListScreen extends HookConsumerWidget {
  const GroupListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final organizationControllerState =
        ref.watch(organizationControllerProvider);
    final organizationControllerNotifier =
        ref.read(organizationControllerProvider.notifier);
    final currentClassroomId = useState<int?>(null);

    useEffect(() {
      Future.microtask(() async {
        await organizationControllerNotifier.loadManagedGroups();
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
              //   // if (currentClassroomId.value != null) {
              //   //   AutoRouter.of(context).push(AddStudentRoute());
              //   // } else {
              //   //   AutoRouter.of(context).push(AddClassRoute());
              //   // }
              // },
            ),
            Expanded(
              child: Container(padding: EdgeInsets.all(8),child: ListView.builder(
                itemCount: organizationControllerState.allParentGroups?.length,
                itemBuilder: (context, index) {
                  final group =
                  organizationControllerState.allParentGroups?[index];
                  return GroupItem(
                    group: group,
                    onTap: () {
                      debugPrint('點擊群組：${group?.name}');
                    },
                  );
                },
              ),) ,
            )
          ],
        ),
      ),
    );
  }
}
