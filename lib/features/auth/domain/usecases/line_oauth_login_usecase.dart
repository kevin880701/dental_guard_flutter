import 'package:flutter_line_sdk/flutter_line_sdk.dart';

import '../../../../core/models/api_response.dart';
import '../../data/models/request/line_oauth_login/line_oauth_login_request.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/models/response/login/login_data.dart';

class LineOAuthLoginUseCase {
  final AuthRepository authRepository;

  LineOAuthLoginUseCase(this.authRepository);

  Future<ApiResponse<LoginData?>?> execute() async {
    try {
      // Step 1: LINE 登入
      final result = await LineSDK.instance.login();

      final accessToken = result.accessToken.value;
      if (accessToken.isEmpty) {
        await LineSDK.instance.logout();
        return ApiResponse<LoginData?>(
          message: "無法取得LINE登入資訊",
          resultCode: 4002,
          data: null,
        );
      }

      // Step 2: 呼叫後端 OAuth Login
      try {
        final loginData = await authRepository.lineOAuthLogin(
          LineOAuthLoginRequest(
            idToken: accessToken,
          ),
        );

        return loginData;
      } catch (e) {
        print("LINE OAuth 登入失敗: $e");
        await LineSDK.instance.logout();
        return ApiResponse<LoginData?>(
          message: "LINE 登入失敗",
          resultCode: 4002,
          data: null,
        );
      }
    } catch (e) {
      print("LINE 登入失敗: $e");
      await LineSDK.instance.logout();
      return ApiResponse<LoginData?>(
        message: "LINE 登入失敗",
        resultCode: 4002,
        data: null,
      );
    }
  }
}
