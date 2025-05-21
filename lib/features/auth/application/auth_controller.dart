import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/providers/auth_session_provider.dart';
import '../../../core/providers/page_provider.dart';
import '../../../core/utils/app_log.dart';
import 'auth_provider.dart';

part 'auth_controller.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? registerEmail,
  }) = _AuthState;
}

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref);
});

class AuthController extends StateNotifier<AuthState> {
  final Ref ref;

  AuthController(this.ref) : super(AuthState());

  Future<bool> login({required String account, required String password}) async {
    ref.read(pageNotifierProvider.notifier).showLoading();

    try {
      final loginUseCase = ref.read(loginUseCaseProvider);
      final getUserInfoUseCase = ref.read(getUserInfoUseCaseProvider);

      // 執行登入取得 token
      final loginResult = await loginUseCase.execute(account, password);
      // 取得 user info
      final userResult = await getUserInfoUseCase.execute();
      // 兩者都成功後才寫入 session
      final session = ref.read(authSessionProvider);
      session.loginData = loginResult;
      session.userInfoData = userResult;

      ref.read(pageNotifierProvider.notifier).hideLoading();
      return true;
    } catch (e) {
      AppLog.e(e.toString());
      ref.read(pageNotifierProvider.notifier).hideLoading();
      return false;
    }
  }
}
