import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/features/organization/application/organization_usecases_provider.dart';
import 'package:dental_guard_flutter/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/app_toast.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../organization/application/organization_controller.dart';
import '../../../organization/data/models/response/group/group_data.dart';
import '../providers/member_list_controller.dart';
import '../widgets/MemberItem.dart';

@RoutePage()
class MemberListScreen extends HookConsumerWidget {
  final GroupData group;

  const MemberListScreen({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberListControllerNotifier =ref.read(memberListControllerProvider.notifier);
    final memberListState = ref.watch(memberListControllerProvider);
    final organizationControllerNotifier = ref.read(organizationControllerProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
         memberListControllerNotifier.setGroupId(group.id);
        await memberListControllerNotifier.loadMembersByGroupId();
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          children: [
            TitleBar(
              title: group.name,
              onBackTap: () {
                context.pop();
              },

              onAddTap: () async {
                showAddMemberDialog(
                  context,
                  onSubmit: ({
                    required String number,
                    required String name,
                    required DateTime birthday,
                    required int gender,
                  }) async {
                    final useCase = ref.read(addGroupMemberExtendedUseCaseProvider);
                    final result = await useCase(
                      groupId: group.id,
                      number: number,
                      name: name,
                      birthday: birthday.toIsoDateTime(),
                      gender: gender,
                    );
                    if (result.data != null) {
                      organizationControllerNotifier.appendGroupMembers(groupId: group.id, users: [result.data!]);
                      memberListControllerNotifier.loadMembersByGroupId();
                      AppToast.showToast(message: AppStrings.createSuccess);
                    } else {
                      AppToast.showToast(message: "${AppStrings.createFailed}: ${result.message}");
                    }
                  },
                );
              },
            ),

            // 顯示成員列表
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: memberListState.users.length,
                itemBuilder: (context, index) {
                  final user = memberListState.users[index];
                  return MemberItem(
                    user: user,
                    onTap: () {
                      context.pushRoute(MemberInfoRoute(user: user));
                    },
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
