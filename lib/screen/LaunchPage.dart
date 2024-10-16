import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/provider/VersionInfoProvider.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/route/AppRouter.gr.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';
import 'package:dental_guard_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class LaunchPage extends HookConsumerWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        ref.read(versionInfoProvider.notifier).loadVersionInfo().then((_){
          Timer(const Duration(seconds: 2), () async {
            AutoRouter.of(context).replace(const LoginRoute());
          });
        });
      });
      return null;
    }, []);

    return Scaffold(
      appBar: blackLightAppBar(),
      body: Stack(
        children: [
          // Container(
          //   height: double.infinity,
          //   width: double.infinity,
          //   alignment: Alignment.center,
          //   child: assetImage(AppImages.launchBg,width: double.infinity, height: double.infinity, fit: BoxFit.fill),
          // ),
          Align(
            alignment: Alignment.center,
            child: assetImage(AppImages.appIcon, width: screenWidth * 0.6, height: screenWidth * 0.6 * 0.26),
          ),
        ],
      ),
    );
  }
}
