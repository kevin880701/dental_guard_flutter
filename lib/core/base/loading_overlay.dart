import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/app_resources.dart';
import '../providers/loading_provider.dart';
import '../providers/page_provider.dart';
import '../utils/app_toast.dart';
import '../widgets/text/app_text.dart';
import '../widgets/text/text_theme.dart';

class LoadingOverlay extends HookConsumerWidget {
  final String loadingText;

  const LoadingOverlay({
    super.key,
    this.loadingText = AppStrings.loading,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState = ref.watch(loadingNotifierProvider);

    // 監聽 toast 消息
    ref.listen<PageState>(pageNotifierProvider, (previous, next) {
      if (next.message != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          AppToast.showToast(
            message: next.message!,
            type: next.toastType,
            duration: const Duration(seconds: 3),
            alignment: ToastAlignment.bottom,
          );
        });
      }
    });

    return Stack(
      children: [
        if (loadingState.isLoading) ...[
          Opacity(
            opacity: 0.5,
            child: ModalBarrier(dismissible: false, color: AppColors.black),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        AppColors.primaryBlack,
                        BlendMode.srcIn,
                      ),
                      child: CupertinoActivityIndicator(radius: 18.0),
                    ),
                    SizedBox(height: 12),
                    AppText(
                      text: loadingText,
                      textStyle: bodySmall,
                      color: Colors.white,
                    ),
                    if (loadingState.isCancellable)
                      TextButton(
                        onPressed: () => ref.read(loadingNotifierProvider.notifier).cancelLoading(),
                        child: Text(
                          AppStrings.cancel,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: CupertinoColors.systemYellow,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}