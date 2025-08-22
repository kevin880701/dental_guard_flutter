import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/base/base_page.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/providers/page_provider.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../../core/widgets/keep_alive_wrapper.dart';
import '../../../auth/presentation/pages/personal_screen.dart';
import '../../../group/presentation/pages/group_list_screen.dart';

@RoutePage()
class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastBackPressed = useState<DateTime?>(null);
    final TabController tabController = useTabController(initialLength: 2);
    final tabSelectedIndex = useState(0);

    useEffect(() {
      return null;
    }, []);

    return BasePage(
      backgroundColor: AppColors.bgColor,
      onWillPop: () async {
        final now = DateTime.now();
        if (lastBackPressed.value == null ||
            now.difference(lastBackPressed.value!) > Duration(seconds: 2)) {
          lastBackPressed.value = now;
          ref.read(pageNotifierProvider.notifier)
              .showToastMessage(
              message: AppStrings.pressAgainExit);
          return false; // 禁止立刻退出，等待下一次按鍵
        }
        exitApp();
        return true; // 兩次按鍵間隔短，允許退出
      },
      child: Column(
        children: [
          Expanded(
              child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: tabController,
            children: <Widget>[
              KeepAliveWrapper(child: GroupListScreen()),
              KeepAliveWrapper(child: PersonalScreen()),
            ],
          )),
          Container(
            color: AppColors.white,
            child: TabBar(
              controller: tabController,
              indicatorColor: AppColors.transparent,
              labelColor: AppColors.primaryBlack,
              unselectedLabelColor: AppColors.grey,
              dividerColor: AppColors.transparent,
              tabs: <Widget>[
                Tab(
                  icon: tabSelectedIndex.value == 0
                      ? AppIcon(
                          icon: AppImages.homeActiveIcon,
                          size: 24.sp,
                          color: AppColors.primaryBlack)
                      : AppIcon(
                          icon: AppImages.homeInactiveIcon,
                          size: 24.sp,
                          color: AppColors.grey),
                  text: AppStrings.home,
                ),
                Tab(
                  icon: tabSelectedIndex.value == 1
                      ? AppIcon(
                          icon: AppImages.personalActiveIcon,
                          size: 24.sp,
                          color: AppColors.primaryBlack)
                      : AppIcon(
                          icon: AppImages.personalInactiveIcon,
                          size: 24.sp,
                          color: AppColors.grey),
                  text: AppStrings.personal,
                ),
              ],
              onTap: (index) {
                tabSelectedIndex.value = index;
              },
            ),
          ),
        ],
      ),
    );
  }
}
