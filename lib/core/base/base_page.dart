import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/app_resources.dart';
import '../providers/page_provider.dart';

class BasePage extends HookConsumerWidget {
  final Widget child;
  final Future<bool> Function()? onWillPop;
  final String? loadingText;
  final Color statusBarColor;
  final Color backgroundColor;
  final bool extendToStatusBar;
  final bool extendToNavigationBar;
  final SystemUiOverlayStyle systemOverlayStyle;

  const BasePage({
    required this.child,
    this.onWillPop,
    this.loadingText = AppStrings.loading,
    this.statusBarColor = Colors.black,
    this.backgroundColor = AppColors.bgColor,
    this.extendToStatusBar = false,
    this.extendToNavigationBar = false,
    this.systemOverlayStyle = SystemUiOverlayStyle.light,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageNotifierProvider);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        // 檢查小鍵盤是否顯示
        if (MediaQuery.of(context).viewInsets.bottom > 0) {
          FocusScope.of(context).unfocus(); // 收起小鍵盤
          return;
        }

        if (!didPop) {
          if (onWillPop != null) {
            final canProceed = await onWillPop!();
            if (canProceed && context.mounted) {
              Navigator.of(context).pop();
            }
          }
        }
      },
      child: Scaffold(
        extendBody: extendToNavigationBar,
        extendBodyBehindAppBar: extendToStatusBar,
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: statusBarColor,
          systemOverlayStyle: systemOverlayStyle,
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: Stack(
          children: [
            AbsorbPointer(
              absorbing: pageState.isLoading,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
