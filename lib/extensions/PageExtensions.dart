import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dental_guard_flutter/provider/PageProvider.dart';

extension PageExtensions on WidgetRef {
  void showLoading({bool cancellable = false}) {
    read(pageProvider.notifier).showLoading(cancellable: cancellable);
  }

  void hideLoading() {
    read(pageProvider.notifier).hideLoading();
  }

  void showError(String message) {
    read(pageProvider.notifier).showError(message);
  }

  void hideError() {
    read(pageProvider.notifier).hideError();
  }
}
