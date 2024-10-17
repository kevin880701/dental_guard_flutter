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
    // Launch, Login, and Main Routes
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

    // Detect Image Pages
    CustomRoute(
      path: '/detectImage',
      page: DetectImageRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Edit User Information Pages
    CustomRoute(
      path: '/editUserInformation',
      page: EditUserInformationRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Image Detect Pages
    CustomRoute(
      path: '/imageDetect',
      page: ImageDetectRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Original Image Pages
    CustomRoute(
      path: '/originalImage',
      page: OriginalImageRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Setting Pages
    CustomRoute(
      path: '/setting',
      page: SettingRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Student List Pages
    CustomRoute(
      path: '/studentList',
      page: StudentListRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // User Info Pages
    CustomRoute(
      path: '/userInfo',
      page: UserInfoRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // User Info Pages
    CustomRoute(
      path: '/studentInfo',
      page: StudentInfoRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
  ];
}
