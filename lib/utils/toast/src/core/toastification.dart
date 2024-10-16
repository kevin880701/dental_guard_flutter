import 'package:dental_guard_flutter/utils/toast/src/core/toastification_manager.dart';
import 'package:dental_guard_flutter/utils/toast/src/widget/built_in/built_in_builder.dart';
import 'package:flutter/material.dart';
import 'package:dental_guard_flutter/utils/toast/toastification.dart';

// TODO(payam): add navigator observer

/// This is the main singleton class instance of the package.
/// You can use this instance to show and manage your notifications.
///
final toastification = Toastification();

class Toastification {
  static final Toastification _instance = Toastification._internal();

  Toastification._internal();

  factory Toastification() => _instance;

  final Map<Alignment, ToastificationManager> _managers = {};

  ToastificationItem showCustom({
    required BuildContext context,
    AlignmentGeometry? alignment,
    TextDirection? direction,
    required ToastificationBuilder builder,
    ToastificationAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Duration? autoCloseDuration,
    OverlayState? overlayState,
    DismissDirection? dismissDirection,
    ToastificationCallbacks callbacks = const ToastificationCallbacks(),
  }) {
    direction ??= Directionality.of(context);
    final config = ToastificationConfigProvider.maybeOf(context)?.config ??
        const ToastificationConfig();
    final effectiveAlignment = (alignment ?? config.alignment).resolve(direction);
    final manager = _managers.putIfAbsent(
      effectiveAlignment,
      () => ToastificationManager(
        alignment: effectiveAlignment,
        config: config,
      ),
    );

    return manager.showCustom(
      context: context,
      builder: builder,
      animationBuilder: animationBuilder,
      animationDuration: animationDuration,
      autoCloseDuration: autoCloseDuration,
      overlayState: overlayState,
      callbacks: callbacks,
    );
  }

  ToastificationItem showWithNavigatorState({
    required NavigatorState navigator,
    required ToastificationBuilder builder,
    AlignmentGeometry? alignment,
    TextDirection? textDirection,
    ToastificationAnimationBuilder? animationBuilder,
    Duration? animationDuration,
    Duration? autoCloseDuration,
    ToastificationCallbacks callbacks = const ToastificationCallbacks(),
  }) {
    final context = navigator.context;
    return showCustom(
      context: context,
      alignment: alignment,
      direction: textDirection,
      builder: builder,
      animationBuilder: animationBuilder,
      animationDuration: animationDuration,
      autoCloseDuration: autoCloseDuration,
      overlayState: navigator.overlay,
      callbacks: callbacks,
    );
  }

  ToastificationItem show({
    required BuildContext context,
    AlignmentGeometry? alignment,
    Duration? autoCloseDuration,
    OverlayState? overlayState,
    ToastificationAnimationBuilder? animationBuilder,
    ToastificationType? type,
    ToastificationStyle? style,
    Widget? title,
    Duration? animationDuration,
    Widget? description,
    Widget? icon,
    Color? primaryColor,
    Color? backgroundColor,
    Color? foregroundColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
    TextDirection? direction,
    bool? showProgressBar,
    ProgressIndicatorThemeData? progressBarTheme,
    CloseButtonShowType? closeButtonShowType,
    bool? closeOnClick,
    bool? dragToClose,
    DismissDirection? dismissDirection,
    bool? pauseOnHover,
    bool? applyBlurEffect,
    ToastificationCallbacks callbacks = const ToastificationCallbacks(),
  }) {
    return showCustom(
      context: context,
      overlayState: overlayState,
      alignment: alignment,
      direction: direction,
      autoCloseDuration: autoCloseDuration,
      animationBuilder: animationBuilder,
      animationDuration: animationDuration,
      callbacks: callbacks,
      builder: (context, holder) {
        return BuiltInBuilder(
          item: holder,
          type: type,
          style: style,
          title: title,
          description: description,
          icon: icon,
          primaryColor: primaryColor,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: padding,
          margin: margin,
          borderRadius: borderRadius,
          boxShadow: boxShadow,
          direction: direction,
          showProgressBar: showProgressBar,
          progressBarTheme: progressBarTheme,
          closeButtonShowType: closeButtonShowType,
          closeOnClick: closeOnClick,
          dragToClose: dragToClose,
          dismissDirection: dismissDirection,
          pauseOnHover: pauseOnHover,
          applyBlurEffect: applyBlurEffect,
          callbacks: callbacks,
        );
      },
    );
  }

  ToastificationItem? findToastificationItem(String id) {
    try {
      for (final manager in _managers.values) {
        final foundValue = manager.findToastificationItem(id);
        if (foundValue != null) {
          return foundValue;
        }
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  void dismiss(ToastificationItem notification, {bool showRemoveAnimation = true}) {
    final manager = _managers[notification.alignment];
    if (manager != null) {
      manager.dismiss(notification, showRemoveAnimation: showRemoveAnimation);
    }
  }

  void dismissAll({bool delayForAnimation = true}) {
    for (final manager in _managers.values) {
      manager.dismissAll(delayForAnimation: delayForAnimation);
    }
  }

  void dismissById(String id, {bool showRemoveAnimation = true}) {
    final notification = findToastificationItem(id);
    if (notification != null) {
      dismiss(notification, showRemoveAnimation: true);
    }
  }
}
