import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../organization/application/organization_controller.dart';
import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../../../organization/data/models/response/group_with_user_type/group_with_user_type_data.dart';
import '../providers/member_list_controller.dart';
import '../widgets/MemberItem.dart';

class MemberListScreen extends HookConsumerWidget {
  final GroupWithUserTypeData group;

  const MemberListScreen({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberListControllerNotifier =ref.read(memberListControllerProvider.notifier);
    final memberListState = ref.watch(memberListControllerProvider);
    final organizationControllerNotifier = ref.read(organizationControllerProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
         memberListControllerNotifier.setGroup(group);
        await memberListControllerNotifier.loadMembersByGroupId();
      });
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          children: [
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
                      context.pushRoute(MemberMainRoute(group: group, user: user));
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
