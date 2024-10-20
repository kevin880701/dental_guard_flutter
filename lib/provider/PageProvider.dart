import 'package:dental_guard_flutter/utils/ToastHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageState {
  final bool isLoading;
  final String? errorMessage;
  final String? successMessage;
  final bool isCancellable;
  final bool isCancelled;

  PageState({
    this.isLoading = false,
    this.errorMessage,
    this.successMessage,
    this.isCancellable = false,
    this.isCancelled = false,
  });

  PageState copyWith({
    bool? isLoading,
    String? errorMessage,
    String? successMessage,
    bool? isCancellable,
    bool? isCancelled,
  }) {
    return PageState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      successMessage: successMessage,
      isCancellable: isCancellable ?? this.isCancellable,
      isCancelled: isCancelled ?? this.isCancelled,
    );
  }
}

class PageNotifier extends StateNotifier<PageState> {
  PageNotifier() : super(PageState());

  void showLoading({bool cancellable = false}) {
    state = state.copyWith(isLoading: true, isCancellable: cancellable, isCancelled: false);
  }

  void hideLoading() {
    state = state.copyWith(isLoading: false);
  }

  void cancelLoading() {
    state = state.copyWith(isLoading: false, isCancelled: true);
  }

  void showError(String message) {
    state = state.copyWith(errorMessage: message);
  }

  void showToastIfError(BuildContext context) {
    if (state.errorMessage != null) {
      showErrorToast(context: context, text: state.errorMessage!);
      state = state.copyWith(errorMessage: null);
    }
  }

  void showSuccess(String message) {
    state = state.copyWith(successMessage: message);
  }

  void showToastIfSuccess(BuildContext context) {
    if (state.successMessage != null) {
      showSuccessToast(context: context, text: state.successMessage!);
      state = state.copyWith(successMessage: null);
    }
  }

  Future<void> hideError() async {
    state = state.copyWith(errorMessage: null);
  }
}

final pageProvider = StateNotifierProvider<PageNotifier, PageState>((ref) {
  return PageNotifier();
});
