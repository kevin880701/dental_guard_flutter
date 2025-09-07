import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/app_toast.dart';
import 'package:dental_guard_flutter/features/auth/application/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/dropdown/app_dropdown.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../../routes/app_router.dart';
import '../../../organization/application/organization_usecases_provider.dart';
import '../../../organization/data/models/response/group/group_data.dart';
import '../provider/group_list_controller.dart';
import '../widgets/group_item.dart';

class GroupListScreen extends HookConsumerWidget {
  const GroupListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupListState = ref.watch(groupListControllerProvider);
    final groupListController = ref.read(groupListControllerProvider.notifier);
    final selectedOrgIndex = useState<int>(0);

    useEffect(() {
      Future.microtask(() async {
        await groupListController.initialize();
      });
      return null;
    }, []);

    // 監聽組織選擇變化
    useEffect(() {
      if (groupListState.organizations.isNotEmpty) {
        selectedOrgIndex.value = groupListState.selectedOrganizationIndex;
      }
      return null;
    }, [groupListState.selectedOrganizationIndex]);

    // 檢查當前選中的組織是否有新增權限
    bool canAddGroup() {
      final selectedOrganization = groupListController.selectedOrganization;
      if (selectedOrganization == null) return false;

      final userType = selectedOrganization.type.toLowerCase();
      return userType == 'admin' || userType == 'manager';
    }

    return Container(
      color: AppColors.bgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleBar(
              title: AppStrings.classList,
              isBack: false,
              onAddTap: canAddGroup() ? () async {
                final selectedOrganization = groupListController.selectedOrganization;
                if (selectedOrganization == null) {
                  AppToast.showToast(message: '請先選擇組織');
                  return;
                }

                final input = await showBottomEditDialog(
                  context,
                  title: AppStrings.addClass,
                  hintText: AppStrings.plsEnterClassName,
                  wordLimit: 8,
                );
                if (input == null) return;
                if (input.isEmpty) return;

                if (input.isNotEmpty) {
                  final useCase = ref.read(createGroupUseCaseProvider);
                  final result = await useCase(
                    organizationId: selectedOrganization.id,
                    groupName: input,
                    userId: ref.watch(authControllerProvider).userInfoData!.id,
                  );
                  if (result != null) {
                    AppToast.showToast(message: AppStrings.createSuccess);
                    await groupListController.refreshGroups();
                  } else {
                    AppToast.showToast(message: AppStrings.createFailed);
                  }
                } else {
                  AppToast.showToast(message: AppStrings.enterFailed);
                }
              }: null,
            ),

            // 組織選擇下拉選單
            if (groupListState.organizations.isNotEmpty)
              IntrinsicWidth(child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AppDropdown(
                  items: groupListController.organizationNames,
                  selectedValue: selectedOrgIndex,
                  onChanged: (index, value) async {
                    await groupListController.selectOrganization(index);
                  },
                  backgroundColor: AppColors.white,
                  borderColor: AppColors.primaryBlack,
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryBlack,
                    fontWeight: FontWeight.w500,
                  ),
                  iconColor: AppColors.primaryBlack,
                  menuBorderRadius: 12,
                  menuElevation: 6,
                ),
              ),)
              ,

            // 載入狀態或錯誤訊息
            if (groupListState.isLoadingOrganizations)
              const Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              )
            else if (groupListState.error != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      groupListState.error!,
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => groupListController.initialize(),
                      child: const Text('重試'),
                    ),
                  ],
                ),
              ),

            // 群組列表
            Expanded(
              child: groupListState.isLoadingGroups
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: groupListState.groups.length,
                  itemBuilder: (context, index) {
                    final groupWithCount = groupListState.groups[index];

                    return GroupItem(
                      groupWithCount: groupWithCount,
                      onTap: () {
                        context.pushRoute(GroupMainRoute(group: groupWithCount));
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
                            groupId: groupWithCount.id,
                            newName: input,
                          );
                          if (result.data != null) {
                            AppToast.showToast(message: AppStrings.editSuccess);
                            await groupListController.refreshGroups();
                          } else {
                            AppToast.showToast(message: "${AppStrings.editFailed}: ${result.message}");
                          }
                        }
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
