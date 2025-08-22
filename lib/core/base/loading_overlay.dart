import 'package:dental_guard_flutter/core/widgets/text/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/app_resources.dart';
import '../providers/page_provider.dart';
import '../utils/app_toast.dart';
import '../widgets/text/app_text.dart';

class LoadingOverlay extends HookConsumerWidget {
  final String loadingText;
  final VoidCallback? onCancel;

  const LoadingOverlay({
    super.key,
    this.loadingText = AppStrings.loading,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(pageNotifierProvider);
    final pageNotifier = ref.read(pageNotifierProvider.notifier);
    ref.listen<PageState>(pageNotifierProvider, (previous, next) {
      if (next.message != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          AppToast.showToast(
            message: next.message!,
            type: next.toastType,
            duration: const Duration(seconds: 3),
            alignment: ToastAlignment.bottom,
          );

          // 清空消息
          // pageNotifier.hideMessage();
        });
      }
    });

    return Stack(
      children: [
        if (pageState.isLoading) ...[
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
                    SizedBox(height: 12,),
                    AppText(
                      text: loadingText,
                      textStyle: bodySmall,
                      color: Colors.white,
                    ),
                    if (onCancel != null)
                      TextButton(
                        onPressed: onCancel,
                        child: Text(
                          loadingText,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
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
