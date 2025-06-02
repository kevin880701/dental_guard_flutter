import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/params.dart';
import '../../../core/models/api_response.dart';
import '../../../core/network/token_manager.dart';
import '../../../core/providers/page_provider.dart';
import '../../../core/utils/app_log.dart';
import '../../../core/utils/shared_prefs_util.dart';
import '../../organization/application/organization_controller.dart';
import '../data/models/response/login/login_data.dart';
import '../data/models/response/user_info/user_info_data.dart';
import '../domain/entities/OAuthProviderType.dart';
import 'auth_provider.dart';

part 'auth_controller.freezed.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, AuthState>((ref) {
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

  Future<ApiResponse<LoginData?>> login(
      {required String account, required String password}) async {
    ref.read(pageNotifierProvider.notifier).showLoading();

    try {
      final loginUseCase = ref.read(loginUseCaseProvider);
      final getUserInfoUseCase = ref.read(getUserInfoUseCaseProvider);

      final loginResult = await loginUseCase.execute(account, password);

      final loginData = loginResult.data;
      if (loginData == null ||
          loginData.accessToken.isEmpty ||
          loginData.refreshToken.isEmpty) {
        return loginResult;
      }

      final userResult = await getUserInfoUseCase.execute();
      await SharedPrefsUtil.setString(
          REFRESH_TOKEN, loginData.refreshToken ?? "");

      state = state.copyWith(
        loginData: loginData,
        userInfoData: userResult,
      );

      ref.read(pageNotifierProvider.notifier).hideLoading();
      return loginResult;
    } catch (e) {
      AppLog.e(e.toString());
      ref.read(pageNotifierProvider.notifier).hideLoading();
      return ApiResponse(
          resultCode: -99999, message: "登入失敗，請稍後再試或聯繫客服", data: null);
    }
  }

  Future<ApiResponse<LoginData?>> oAuthLogin(OAuthProviderType providerType) async {
    ref.read(pageNotifierProvider.notifier).showLoading();

    try {
      ApiResponse<LoginData?>? loginResult;

      switch (providerType) {
        case OAuthProviderType.google:
          final googleUseCase = ref.read(signInWithGoogleUseCaseProvider);
          loginResult = await googleUseCase.execute();
          break;
        case OAuthProviderType.apple:
          // final appleUseCase = ref.read(signInWithAppleUseCaseProvider);
          // loginResult = await appleUseCase.execute();
          break;
        case OAuthProviderType.facebook:
          // final facebookUseCase = ref.read(signInWithFacebookUseCaseProvider);
          // loginResult = await facebookUseCase.execute();
          break;
        case OAuthProviderType.line:
          final lineUseCase = ref.read(lineOAuthLoginUseCaseProvider);
          loginResult = await lineUseCase.execute();
          break;
      }

      final loginData = loginResult?.data;
      if (loginData == null ||
          loginData.accessToken.isEmpty ||
          loginData.refreshToken.isEmpty) {
        return loginResult ?? ApiResponse(resultCode: -1, message: "第三方登入失敗", data: null);
      }

      final getUserInfoUseCase = ref.read(getUserInfoUseCaseProvider);
      final userResult = await getUserInfoUseCase.execute();
      await SharedPrefsUtil.setString(
          REFRESH_TOKEN, loginData.refreshToken ?? "");

      state = state.copyWith(
        loginData: loginData,
        userInfoData: userResult,
      );

      ref.read(pageNotifierProvider.notifier).hideLoading();
      return loginResult!;
    } catch (e) {
      AppLog.e(e.toString());
      ref.read(pageNotifierProvider.notifier).hideLoading();
      return ApiResponse(
          resultCode: -99999, message: "登入失敗，請稍後再試或聯繫客服", data: null);
    }
  }

  /// 清除登入資訊
  void clear() {
    state = const AuthState();
  }

  void logout() {
    ref.read(organizationControllerProvider.notifier).clear();
    ref.read(signInWithGoogleUseCaseProvider).signOut();
    clear();
    TokenManager.clearTokens();
  }
}
