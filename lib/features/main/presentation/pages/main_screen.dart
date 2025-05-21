import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/image/app_icon.dart';
import '../../../../core/widgets/keep_alive_wrapper.dart';
import '../../../group/presentation/pages/group_list_screen.dart';

@RoutePage()
class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController _tabController = useTabController(initialLength: 3);
    final _tabSelectedIndex = useState(0);

    useEffect(() {
      return null;
    }, []);

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: <Widget>[
                KeepAliveWrapper(child: GroupListScreen()),
                KeepAliveWrapper(child: Text("data2")),
              ],
            )),
            Container(
              color: AppColors.white,
              child: TabBar(
                controller: _tabController,
                indicatorColor: AppColors.transparent,
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.grey,
                dividerColor: AppColors.transparent,
                tabs: <Widget>[
                  Tab(
                    icon: _tabSelectedIndex.value == 0
                        ? AppIcon(
                            icon: AppImages.homeActiveIcon,
                            size: 24.sp,
                            color: AppColors.black)
                        : AppIcon(
                            icon: AppImages.homeInactiveIcon,
                            size: 24.sp,
                            color: AppColors.grey),
                    text: AppStrings.home,
                  ),
                  Tab(
                    icon: _tabSelectedIndex.value == 1
                        ? AppIcon(
                            icon: AppImages.personalActiveIcon,
                            size: 24.sp,
                            color: AppColors.black)
                        : AppIcon(
                            icon: AppImages.personalInactiveIcon,
                            size: 24.sp,
                            color: AppColors.grey),
                    text: AppStrings.account,
                  ),
                ],
                onTap: (index) {
                  _tabSelectedIndex.value = index;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
