import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/base/loading_overlay.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_fonts.dart';
import 'core/network/network_interface.dart';
import 'core/providers/page_provider.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext? get appContext => navigatorKey.currentContext;

final _appRouter = AppRouter(navigatorKey: navigatorKey);
final autoRouteObserver = AutoRouteObserver();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NetworkInterface.createInstance();

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageNotifierProvider);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
          child: MaterialApp.router(
            scaffoldMessengerKey: scaffoldMessengerKey,
            theme: ThemeData(
              fontFamily: AppFonts.notoSansTC,
            ),
            routerConfig: _appRouter.config(
              navigatorObservers: () => [autoRouteObserver],
            ),
            builder: (context, child) {
              return Stack(
                children: [
                  child ?? const SizedBox.shrink(),
                  LoadingOverlay(
                    loadingText: pageState.message ?? 'Loading...',
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
