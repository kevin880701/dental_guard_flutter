import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/resources/AppColors.dart';
import 'package:dental_guard_flutter/route/AppRouter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigatorKey = GlobalKey<NavigatorState>();

BuildContext? get appContext => navigatorKey.currentContext;

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter(navigatorKey: navigatorKey);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.bgColor,
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
