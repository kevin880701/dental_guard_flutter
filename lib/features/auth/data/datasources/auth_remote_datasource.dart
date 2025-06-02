import '../../../../core/constants/api_endpoints.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/network/network_interface.dart';
import '../../../../core/network/token_manager.dart';
import '../../../../core/utils/api_response_parser.dart';
import '../models/request/line_oauth_login/line_oauth_login_request.dart';
import '../models/request/login/login_request.dart';
import '../models/request/firebase_oauth_login_request/firebase_oauth_login_request.dart';
import '../models/request/refresh_token/refresh_token_request.dart';
import '../models/request/send_verification_code/send_verification_code_request.dart';
import '../models/request/enter_verification_code/enter_verification_code_request.dart';
import '../models/request/set_password/set_password_request.dart';
import '../models/request/set_user_profile/set_user_profile_request.dart';
import '../models/request/updateUserProfile/update_user_profile_request.dart';
import '../models/response/login/login_data.dart';
import '../models/response/refresh_token/refresh_token_data.dart';
import '../models/response/user_info/user_info_data.dart';

class AuthRemoteDataSource {
  final NetworkInterface networkInterface;

  AuthRemoteDataSource(this.networkInterface);

  Future<ApiResponse<LoginData?>> login(LoginRequest loginRequest) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.login,
      body: loginRequest.toJson(),
    );
    final apiResponse = ApiResponse<LoginData>.fromJson(
      response.data,
      (json) => LoginData.fromJson(json as Map<String, dynamic>),
    );
    TokenManager.setTokens(
      accessToken: apiResponse.data?.accessToken ?? "",
      refreshToken: apiResponse.data?.refreshToken ?? "",
    );
    return apiResponse;
  }

  Future<ApiResponse<LoginData?>> firebaseOAuthLogin(FirebaseOAuthLoginRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.firebaseOauthLogin,
      body: request.toJson(),
    );
    final apiResponse = ApiResponse<LoginData>.fromJson(
      response.data,
          (json) => LoginData.fromJson(json as Map<String, dynamic>),
    );
    TokenManager.setTokens(
      accessToken: apiResponse.data?.accessToken ?? "",
      refreshToken: apiResponse.data?.refreshToken ?? "",
    );
    return apiResponse;
  }

  // 新增：Line OAuth 登入
  Future<ApiResponse<LoginData?>> lineOAuthLogin(LineOAuthLoginRequest request) async {
    final response = await networkInterface.post(
      url: ApiEndPoint.lineOauthLogin, // 你 API 路徑 /user/login/line-oauth
      body: request.toJson(),
    );
    final apiResponse = ApiResponse<LoginData>.fromJson(
      response.data,
          (json) => LoginData.fromJson(json as Map<String, dynamic>),
    );
    TokenManager.setTokens(
      accessToken: apiResponse.data?.accessToken ?? "",
      refreshToken: apiResponse.data?.refreshToken ?? "",
    );
    return apiResponse;
  }

  Future<UserInfoData?> getUserInfo() async {
    final response = await networkInterface.get(
      url: ApiEndPoint.userInfo,
    );
    final apiResponse = ApiResponse<UserInfoData>.fromJson(
      response.data,
      (json) => UserInfoData.fromJson(json as Map<String, dynamic>),
    );
    return apiResponse.data;
  }

  Future<RefreshTokenData?> refreshToken(
    RefreshTokenRequest refreshTokenRequest,
  ) async {
    final networkInterface = NetworkInterface.getInstance();
    final response = await networkInterface.post(
      url: ApiEndPoint.refreshToken,
      body: refreshTokenRequest.toJson(),
    );

    final apiResponse = ApiResponse<RefreshTokenData>.fromJson(
      response.data,
      (json) => RefreshTokenData.fromJson(json as Map<String, dynamic>),
    );
    return apiResponse.data;
  }

  Future<UserInfoData?> updateUserProfile(UpdateUserProfileRequest request) async {
    final response = await networkInterface.patch(
      url: ApiEndPoint.updateUserProfile,
      body: request.toJson(),
    );

    final apiResponse = ApiResponse<UserInfoData>.fromJson(
      response.data,
          (json) => UserInfoData.fromJson(json as Map<String, dynamic>),
    );
    return apiResponse.data;
  }
}
