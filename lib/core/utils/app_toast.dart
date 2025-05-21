import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

enum ToastAlignment { top, bottom }

enum ToastType {
  DEFAULT,
  ERROR,
  WARNING,
  SUCCESS,
}

class AppToast {
  static final List<_ToastInfo> _activeToasts = [];
  static const int _maxToastCount = 3;
  static const double _toastHeight = 80.0;
  static const double _toastSpacing = 8.0;
  static const double _edgeMargin = 64.0;
  static GlobalKey<NavigatorState>? _navigatorKey;

  static void init(GlobalKey<NavigatorState> navigatorKey) {
    _navigatorKey = navigatorKey;
  }

  static void showToast({
    required String message,
    ToastType type = ToastType.DEFAULT,
    ToastAlignment alignment = ToastAlignment.bottom,
    Duration duration = const Duration(seconds: 2),
    Duration overflowDismissDuration = const Duration(milliseconds: 50),
  }) {
    if (_navigatorKey == null) {
      debugPrint("NavigatorKey is not initialized. Call CustomToast.init() first.");
      return;
    }

    final navigatorState = _navigatorKey!.currentState;
    final overlay = navigatorState?.overlay;
    if (overlay == null) {
      debugPrint("No overlay found for NavigatorKey!");
      return;
    }

    // 如果超過最大數量，立即移除最舊的 Toast，並傳遞 isOverflow: true
    if (_activeToasts.length >= _maxToastCount) {
      _animateRemoveToast(_activeToasts.last, isOverflow: true);
    }

    final GlobalKey<_AnimatedToastWidgetState> key =
    GlobalKey<_AnimatedToastWidgetState>();

    late OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) {
        final index = _activeToasts.indexWhere((toast) => toast.overlay == overlayEntry);
        final offset = alignment == ToastAlignment.bottom
            ? _edgeMargin + index * (_toastHeight + _toastSpacing)
            : _edgeMargin + index * (_toastHeight + _toastSpacing);

        return AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          bottom: alignment == ToastAlignment.bottom ? offset : null,
          top: alignment == ToastAlignment.top ? offset : null,
          left: _edgeMargin.w,
          right: _edgeMargin.w,
          child: _AnimatedToastWidget(
            key: key,
            message: message,
            type: type,
            onAnimationComplete: () {
              _removeToast(overlayEntry);
            },
            duration: duration,
            dismissDuration: const Duration(milliseconds: 300), // 正常消失動畫
            overflowDismissDuration: overflowDismissDuration, // 傳遞超過限制時的動畫時間
          ),
        );
      },
    );

    _activeToasts.insert(0, _ToastInfo(key: key, overlay: overlayEntry));
    overlay.insert(overlayEntry);

    _updateToastPositions();
  }

  static void _animateRemoveToast(_ToastInfo toastInfo, {bool isOverflow = false}) {
    final key = toastInfo.key;
    final overlay = toastInfo.overlay;

    if (key.currentState != null) {
      key.currentState!.triggerDismissAnimation(() {
        _removeToast(overlay);
      }, isOverflow: isOverflow);
    } else {
      _removeToast(overlay);
    }
  }

  static void _removeToast(OverlayEntry overlayEntry) {
    _ToastInfo? toastInfo;

    try {
      toastInfo = _activeToasts.firstWhere((toast) => toast.overlay == overlayEntry);
    } catch (e) {
      toastInfo = null; // 找不到時設置為 null
    }

    if (toastInfo != null) {
      overlayEntry.remove();
      _activeToasts.remove(toastInfo);
      _updateToastPositions();
    }
  }

  static void _updateToastPositions() {
    for (var i = 0; i < _activeToasts.length; i++) {
      _activeToasts[i].overlay.markNeedsBuild();
    }
  }
}

class _ToastInfo {
  final GlobalKey<_AnimatedToastWidgetState> key;
  final OverlayEntry overlay;

  _ToastInfo({required this.key, required this.overlay});
}

class _AnimatedToastWidget extends StatefulWidget {
  final String message;
  final ToastType type;
  final VoidCallback onAnimationComplete;
  final Duration duration;
  final Duration dismissDuration;
  final dynamic overflowDismissDuration;

  const _AnimatedToastWidget({
    Key? key,
    required this.message,
    this.type = ToastType.DEFAULT,
    required this.onAnimationComplete,
    required this.duration,
    this.dismissDuration = const Duration(milliseconds: 300),
    this.overflowDismissDuration = const Duration(milliseconds: 50),
  }) : super(key: key);

  @override
  _AnimatedToastWidgetState createState() => _AnimatedToastWidgetState();
}

class _AnimatedToastWidgetState extends State<_AnimatedToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _slideAnimation;
  bool _isMounted = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300), // 初始為顯示動畫時間
    );

    _opacityAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();

    Future.delayed(widget.duration, () {
      if (_isMounted) {
        triggerDismissAnimation(widget.onAnimationComplete);
      }
    });
  }

  void triggerDismissAnimation(VoidCallback onDismiss, {bool isOverflow = false}) {
    // 根據是否為被擠出的 Toast 設置動畫時間
    _controller.duration = isOverflow
        ? widget.overflowDismissDuration // 短動畫時間
        : const Duration(milliseconds: 300); // 預設正常動畫時間
    _controller.reverse().then((_) {
      if (_isMounted) {
        onDismiss();
      }
    });
  }

  @override
  void dispose() {
    _isMounted = false;
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: _getToastBackgroundColor(widget.type),
                borderRadius: BorderRadius.circular(8.sp),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                widget.message,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getToastBackgroundColor(ToastType type) {
    switch (type) {
      case ToastType.SUCCESS:
        return AppColors.successGreen;
      case ToastType.ERROR:
        return AppColors.errorRed;
      case ToastType.WARNING:
        return AppColors.warningYellow;
      default:
        return AppColors.primaryBlack;
    }
  }
}
