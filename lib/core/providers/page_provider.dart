
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/app_toast.dart';

part 'page_provider.g.dart';

class PageState {
  final bool isLoading;
  final String? message;
  final ToastType toastType;
  final bool isCancellable;
  final bool isCancelled;

  PageState({
    this.isLoading = false,
    this.message,
    this.toastType = ToastType.DEFAULT,
    this.isCancellable = false,
    this.isCancelled = false,
  });

  PageState copyWith({
    bool? isLoading,
    String? message,
    ToastType? toastType,
    bool? isCancellable,
    bool? isCancelled,
  }) {
    return PageState(
      isLoading: isLoading ?? this.isLoading,
      message: message,
      toastType: toastType ?? this.toastType,
      isCancellable: isCancellable ?? this.isCancellable,
      isCancelled: isCancelled ?? this.isCancelled,
    );
  }
}

@riverpod
class PageNotifier extends _$PageNotifier {
  @override
  PageState build() {
    return PageState();
  }

  void showLoading({bool cancellable = false}) {
    state = state.copyWith(isLoading: true, isCancellable: cancellable, isCancelled: false);
  }

  void hideLoading() {
    state = state.copyWith(isLoading: false);
  }

  void cancelLoading() {
    state = state.copyWith(isLoading: false, isCancelled: true);
  }

  void showToastMessage({required String message, ToastType toastType = ToastType.DEFAULT}) {
    state = state.copyWith(message: message, toastType: toastType);
  }

  Future<void> hideMessage() async {
    state = state.copyWith(message: null);
  }
}
