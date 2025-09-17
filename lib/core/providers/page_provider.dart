import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../utils/app_toast.dart';

part 'page_provider.g.dart';

class PageState {
  final String? message;
  final ToastType toastType;

  PageState({
    this.message,
    this.toastType = ToastType.DEFAULT,
  });

  PageState copyWith({
    String? message,
    ToastType? toastType,
  }) {
    return PageState(
      message: message,
      toastType: toastType ?? this.toastType,
    );
  }
}

@riverpod
class PageNotifier extends _$PageNotifier {
  @override
  PageState build() {
    return PageState();
  }

  void showToastMessage({required String message, ToastType toastType = ToastType.DEFAULT}) {
    state = state.copyWith(message: message, toastType: toastType);
  }

  Future<void> hideMessage() async {
    state = state.copyWith(message: null);
  }
}
