import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../features/launch/presentation/pages/launch_screen.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/main/presentation/pages/main_screen.dart';

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
  ];
}
