import 'package:dental_guard_flutter/screen/main/studentList/StudentListPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/main/setting/setting/SettingPage.dart';
import 'package:dental_guard_flutter/screen/NotifyPage.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/KeepAliveWrapper.dart';

@RoutePage()
class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController _tabController = useTabController(initialLength: 3);
    final _tabSelectedIndex = useState(0);

    useEffect(() {
      return null;
    }, []);

    return Scaffold(
      appBar: blackLightAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: <Widget>[
                KeepAliveWrapper(child: StudentListPage()),
                KeepAliveWrapper(child: SettingPage()),
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
                        ? assetImage(AppImages.homeActiveIcon,
                            width: 24.sp, height: 24.sp, color: AppColors.black)
                        : assetImage(AppImages.homeInactiveIcon,
                            width: 24.sp, height: 24.sp, color: AppColors.grey),
                    text: AppTexts.home,
                  ),
                  Tab(
                    icon: _tabSelectedIndex.value == 1
                        ? assetImage(AppImages.personalActiveIcon,
                            width: 24.sp, height: 24.sp, color: AppColors.black)
                        : assetImage(AppImages.personalInactiveIcon,
                            width: 24.sp, height: 24.sp, color: AppColors.grey),
                    text: AppTexts.account,
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
