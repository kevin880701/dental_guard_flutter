import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'AppRouter.gr.dart';

void goLogin(BuildContext context) {
  EasyLoading.dismiss();
  AutoRouter.of(context).pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final int rinterval = 100;
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      path: '/launch',
      page: LaunchRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
      initial: true,
    ),
    CustomRoute(
      path: '/login',
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/main',
      page: MainRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
  ];
}
