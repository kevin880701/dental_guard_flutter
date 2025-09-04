import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/base/base_page.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/widgets/keep_alive_wrapper.dart';
import '../../../../core/widgets/tab_navigation/tab_navigation.dart';
import '../../../../core/widgets/title_bar.dart';
import '../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../organization/data/models/response/group_with_member_count/group_with_member_count_data.dart';
import '../providers/member_main_controller.dart';
import 'member_brushing_chart_screen.dart';
import 'member_teeth_record_screen.dart';

@RoutePage()
class MemberMainScreen extends HookConsumerWidget {
  final GroupWithMemberCountData group;
  final UserInfoData user;

  const MemberMainScreen({super.key, required this.group, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(memberMainControllerProvider);
    final controller = ref.read(memberMainControllerProvider.notifier);

    final tabIndex = useState(0);
    final tabs = [AppStrings.toothBrushingRecord, AppStrings.dataAnalysis];
    final pageController = usePageController(initialPage: 0);

    useEffect(() {
      Future.microtask(() {
        controller.setUser(user);
        controller.setGroup(group);
        controller.loadUserBrushingRecords();
      });
      return null;
    }, []);

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
      child: Column(
        children: [
          TitleBar(
            title: state.user?.name ?? "",
            onBackTap: () {
              context.pop();
            },
          ),

          // ====== TabNavigation ======
          TabNavigation(
            items: tabs,
            selectedIndex: tabIndex.value,
            onItemTap: (idx) {
              tabIndex.value = idx;
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
                KeepAliveWrapper(child: MemberTeethRecordScreen(),),
                KeepAliveWrapper(child: MemberBrushingChartScreen(),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
