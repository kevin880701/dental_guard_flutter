import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/routes/app_router.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/base/loading_overlay.dart';
import 'core/constants/app_fonts.dart';
import 'core/constants/app_strings.dart';
import 'core/network/network_interface.dart';
import 'core/network/token_manager.dart';
import 'core/providers/loading_provider.dart';
import 'core/providers/page_provider.dart';
import 'core/utils/app_toast.dart';
import 'core/utils/shared_prefs_util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext? get appContext => navigatorKey.currentContext;

final _appRouter = AppRouter(navigatorKey: navigatorKey);
final autoRouteObserver = AutoRouteObserver();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // LINE 初始化
  await LineSDK.instance.setup("2007513150");

  await SharedPrefsUtil.init();
  await TokenManager.loadTokens();
  AppToast.init(navigatorKey);
  await NetworkInterface.createInstance();

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    loadingText: AppStrings.loading,
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
