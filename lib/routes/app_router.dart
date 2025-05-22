import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../features/auth/data/models/response/user_info/user_info_data.dart';
import '../features/launch/presentation/pages/launch_screen.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/main/presentation/pages/main_screen.dart';
import '../features/member/presentation/pages/member_info_screen.dart';
import '../features/member/presentation/pages/member_list_screen.dart';
import '../features/organization/data/models/response/group/group_data.dart';
import '../features/teeth_detection/presentation/pages/camera_screen.dart';
import '../features/teeth_detection/presentation/pages/teeth_detection_screen.dart';
import '../features/teeth_record/data/models/response/brushing_record/brushing_record_data.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  final _duration = Duration(milliseconds: 200);

  AppRouter({super.navigatorKey});

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: LaunchRoute.page,
      path: '/launch',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: true,
    ),
    // Login
    CustomRoute(
      page: LoginRoute.page,
      path: '/login',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    // Main
    CustomRoute(
      page: MainRoute.page,
      path: '/main',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: MemberListRoute.page,
      path: '/memberList',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: MemberInfoRoute.page,
      path: '/memberInfo',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: TeethDetectionRoute.page,
      path: '/teethDetection',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: CameraRoute.page,
      path: '/camera',
      duration: _duration,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ];
}
