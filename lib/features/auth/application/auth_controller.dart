
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/params.dart';
import '../../../core/network/token_manager.dart';
import '../../../core/providers/page_provider.dart';
import '../../../core/utils/app_log.dart';
import '../../../core/utils/shared_prefs_util.dart';
import '../../organization/application/organization_controller.dart';
import '../data/models/response/login/login_data.dart';
import '../data/models/response/user_info/user_info_data.dart';
import 'auth_provider.dart';

part 'auth_controller.freezed.dart';

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref);
});

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    LoginData? loginData,
    UserInfoData? userInfoData,
  }) = _AuthState;
}

class AuthController extends StateNotifier<AuthState> {
  final Ref ref;

  AuthController(this.ref) : super(const AuthState());

  Future<bool> login({required String account, required String password}) async {
    ref.read(pageNotifierProvider.notifier).showLoading();

    try {
      final loginUseCase = ref.read(loginUseCaseProvider);
      final getUserInfoUseCase = ref.read(getUserInfoUseCaseProvider);

      final loginResult = await loginUseCase.execute(account, password);
      final userResult = await getUserInfoUseCase.execute();

      await SharedPrefsUtil.setString(REFRESH_TOKEN, loginResult?.refreshToken ?? "");

      state = state.copyWith(
        loginData: loginResult,
        userInfoData: userResult,
      );

      ref.read(pageNotifierProvider.notifier).hideLoading();
      return true;
    } catch (e) {
      AppLog.e(e.toString());
      ref.read(pageNotifierProvider.notifier).hideLoading();
      return false;
    }
  }

  /// 清除登入資訊
  void clear() {
    state = const AuthState();
  }

  void logout() {
    ref.read(organizationControllerProvider.notifier).clear();
    clear();
    TokenManager.clearTokens();
  }
}
