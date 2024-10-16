import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/LoadingOverlay.dart';
import 'package:dental_guard_flutter/utils/ToastHelper.dart';
import 'package:dental_guard_flutter/widgets/common/AppBarWidgets.dart';


class BasePage extends HookConsumerWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Future<bool> Function()? onWillPop;
  final String? loadingText;
  final Color statusBarColor;
  final Color backgroundColor;

  const BasePage({
    required this.child,
    this.appBar,
    this.onWillPop,
    this.loadingText = AppTexts.loading,
    this.statusBarColor = AppColors.black,
    this.backgroundColor = AppColors.bgColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageProvider);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        ref.read(pageProvider.notifier).showToastIfError(context);
      });
      return null;
    }, [pageState.errorMessage]);

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: statusBarColor,
        ));
      });

      return null;
    }, []);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (!didPop) {
          if (onWillPop == null) {
            if (context.mounted) {
              AutoRouter.of(context).popForced();
            }
          } else {
            final canProceed = await onWillPop!();
            if (canProceed && context.mounted) {
              AutoRouter.of(context).popForced();
            }
          }
        }
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar ?? blackLightAppBar(),
        body: Stack(
          children: [
            AbsorbPointer(
              absorbing: pageState.isLoading,
              child: child,
            ),
            if (pageState.isLoading)
              LoadingOverlay(
                loadingText: loadingText!,
                onCancel: pageState.isCancellable
                    ? () {
                  ref.read(pageProvider.notifier).cancelLoading();
                }
                    : null,
              ),
          ],
        ),
      ),
    );
  }
}
