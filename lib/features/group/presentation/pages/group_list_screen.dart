import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:dental_guard_flutter/features/auth/application/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../../routes/app_router.dart';
import '../../../organization/application/organization_controller.dart';
import '../../../organization/application/organization_usecases_provider.dart';
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

    return Container(
      color: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleBar(
              title: AppStrings.classList,
              isBack: currentClassroomId.value != null,
              onAddTap: () async {
                final input = await showBottomEditDialog(
                  context,
                  title: AppStrings.addClass,
                  hintText: AppStrings.plsEnterClassName,
                  wordLimit: 8,
                );
                if (input == null) return;
                if (input.isEmpty) return;

                if (input.isNotEmpty) {
                  // TODO: 暫無組織層級，organizationId一率帶入org-001
                  final useCase = ref.read(createGroupUseCaseProvider);
                  final result = await useCase(
                      organizationId: 'org-001', groupName: input, userId: ref.watch(authControllerProvider).userInfoData!.id,
                  );
                  if (result != null) {

                    AppToast.showToast(message: AppStrings.createSuccess);
                    await organizationControllerNotifier.loadManagedGroups();
                  } else {
                    AppToast.showToast(message: AppStrings.createFailed);
                  }
                } else {
                  AppToast.showToast(message: AppStrings.enterFailed);
                }
              },
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
                      // context.pushRoute(MemberListRoute(group: group!));
                      context.pushRoute(GroupMainRoute(group: group!));
                    },
                    onEditTap: () async {
                      final input = await showBottomEditDialog(
                        context,
                        title: AppStrings.editClassInfo,
                        hintText: AppStrings.plsEnterClassName,
                        wordLimit: 8,
                      );
                      if (input == null) return;
                      if (input.isEmpty) return;

                      if (input.isNotEmpty) {
                        final useCase = ref.read(updateGroupNameUseCaseProvider);
                        final result = await useCase(
                          groupId: group!.id,
                          newName: input,
                        );
                        if (result.data != null) {

                          AppToast.showToast(message: AppStrings.editSuccess);
                          organizationControllerNotifier.updateGroupsById([result.data!]);
                        } else {
                          AppToast.showToast(message: "${AppStrings.editFailed}: ${result.message}");
                        }
                      }
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
