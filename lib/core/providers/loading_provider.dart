import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_provider.g.dart';

class LoadingState {
  final bool isLoading;
  final bool isCancellable;
  final CancelToken? cancelToken;

  LoadingState({
    this.isLoading = false,
    this.isCancellable = false,
    this.cancelToken,
  });

  LoadingState copyWith({
    bool? isLoading,
    bool? isCancellable,
    CancelToken? cancelToken,
  }) {
    return LoadingState(
      isLoading: isLoading ?? this.isLoading,
      isCancellable: isCancellable ?? this.isCancellable,
      cancelToken: cancelToken,
    );
  }
}

class CancelToken {
  bool _isCancelled = false;
  final Completer<void> _completer = Completer<void>();

  bool get isCancelled => _isCancelled;
  Future<void> get future => _completer.future;

  void cancel([String? reason]) {
    if (!_isCancelled) {
      _isCancelled = true;
      _completer.complete();
    }
  }
}

@riverpod
class LoadingNotifier extends _$LoadingNotifier {
  @override
  LoadingState build() {
    return LoadingState();
  }

  CancelToken showLoading({bool cancellable = false}) {
    final cancelToken = cancellable ? CancelToken() : null;
    state = state.copyWith(
      isLoading: true,
      isCancellable: cancellable,
      cancelToken: cancelToken,
    );
    return cancelToken ?? CancelToken();
  }

  void hideLoading() {
    state.cancelToken?.cancel();
    state = state.copyWith(
      isLoading: false,
      isCancellable: false,
      cancelToken: null,
    );
  }

  void cancelLoading() {
    if (state.cancelToken != null) {
      state.cancelToken!.cancel("用戶取消");
    }
    state = state.copyWith(
      isLoading: false,
      isCancellable: false,
      cancelToken: null,
    );
  }
}