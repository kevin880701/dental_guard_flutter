
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dental_guard_flutter/core/utils/utils.dart';
import 'package:dental_guard_flutter/features/organization/application/organization_usecases_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/base/base_page.dart';
import '../../../../core/utils/app_toast.dart';
import '../../../../core/utils/dialog_manager.dart';
import '../../../../core/widgets/keep_alive_wrapper.dart';
import '../../../../core/widgets/tab_navigation/tab_navigation.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../member/presentation/pages/member_list_screen.dart';
import '../../../member/presentation/providers/member_list_controller.dart';
import '../../../organization/application/organization_controller.dart';
import '../../../organization/data/models/response/group/group_data.dart';
import 'group_brushing_chart_screen.dart';

@RoutePage()
class GroupMainScreen extends HookConsumerWidget {
  final GroupData group;

  const GroupMainScreen({super.key, required this.group});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberListControllerNotifier = ref.read(memberListControllerProvider.notifier);
    final organizationControllerNotifier = ref.read(organizationControllerProvider.notifier);

    final tabIndex = useState(0);
    final tabs = [AppStrings.group, AppStrings.dataAnalysis];
    final pageController = usePageController(initialPage: 0);

    // 監聽 tabIndex.value 改變時同步 PageView
    useEffect(() {
      if (pageController.hasClients && pageController.page?.round() != tabIndex.value) {
        pageController.animateToPage(
          tabIndex.value,
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
        );
      }
      return null;
    }, [tabIndex.value]);

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
                      organizationControllerNotifier.loadManagedGroups();
                      memberListControllerNotifier.loadMembersByGroupId();
                      AppToast.showToast(message: AppStrings.createSuccess);
                    } else {
                      AppToast.showToast(message: "${AppStrings.createFailed}: ${result.message}");
                    }
                  },
                );
              },
            ),

            // ====== TabNavigation ======
            TabNavigation(
              items: tabs,
              selectedIndex: tabIndex.value,
              onItemTap: (idx) {
                tabIndex.value = idx;
                // 這裡不用 animateToPage，交給 useEffect 處理
              },
              labelColor: AppColors.primaryBlack,
              indicatorColor: AppColors.primaryBlack,
              unselectedLabelColor: AppColors.grey,
            ),

            // ====== 支援左右滑動的 PageView ======
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (idx) {
                  // 用 pageView 滑動時同步 tabIndex
                  tabIndex.value = idx;
                },
                children: [
                  KeepAliveWrapper(child: MemberListScreen(group: group,),),
                  KeepAliveWrapper(child: GroupBrushingChartScreen(group: group,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
