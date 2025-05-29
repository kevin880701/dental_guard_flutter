import 'package:auto_route/auto_route.dart';
import 'package:dental_guard_flutter/core/constants/app_resources.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../features/auth/application/auth_controller.dart';
import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/auth/data/models/request/refresh_token/refresh_token_request.dart';
import '../../features/auth/data/models/response/refresh_token/refresh_token_data.dart';
import '../../main.dart';
import '../../routes/app_router.dart';
import '../utils/dialog_manager.dart';
import 'network_interface.dart';
import 'token_manager.dart';

class AuthInterceptor extends Interceptor {
  static final List<String> noAuthPaths = [
    '/user/login',
    '/set_user_profile',
    '/send-verification-code',
    '/enter-verification-code',
    '/refresh-token',
  ];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final path = options.path;

    // 這些 path 不需要 Authorization
    if (noAuthPaths.contains(path)) {
      return handler.next(options);
    }

    final token = TokenManager.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    final context = navigatorKey.currentContext;
    final statusCode = err.response?.statusCode;
    final responseData = err.response?.data;

    // 🔹 比對是否為白名單 API（不進行 refresh-token 處理）
    final uri = Uri.parse(err.requestOptions.uri.toString());
    final path = uri.path;
    final isNoAuthPath = noAuthPaths.contains(path); 

    // 若是白名單 API，直接回傳錯誤，不進行 token 處理
    if (isNoAuthPath) {
      return handler.next(err);
    }

    if (statusCode == 401 && responseData != null) {
      // token相關錯誤
      final resultCode = responseData['result_code'];

      switch (resultCode) {
        case 100005: // Token 過期
          // 嘗試刷新 token
          try {
            final refreshTokenData = await _refreshAccessToken();

            if (refreshTokenData == null ||
                refreshTokenData.accessToken.isEmpty) {
              refreshTokenExpire(context);
              return handler.reject(err);
            }

            final clonedRequest = await _retryRequest(
                err.requestOptions, refreshTokenData.accessToken);
            return handler.resolve(clonedRequest);
          } catch (e) {
            refreshTokenExpire(context);
            return handler.reject(err);
          }

        case 100003: // Refresh Token 也無效
          refreshTokenExpire(context);
          return handler.reject(err);

        case 100004: // 格式錯誤，可能沒帶Bearer.....
          refreshTokenExpire(context);
          return handler.reject(err);

        case 100002: // 未授權
          refreshTokenExpire(context);
          return handler.reject(err);

        default: // 其他未定義錯誤
          TokenManager.clearTokens();
          refreshTokenExpire(context);
          return handler.reject(err);
      }
    }

    return handler.next(err);
  }
}

/// 以refreshToken更新AccessToken
Future<RefreshTokenData?> _refreshAccessToken() async {
  final dataSource = AuthRemoteDataSource(NetworkInterface.getInstance());
  final refreshToken = TokenManager.refreshToken;

  if (refreshToken == null || refreshToken.isEmpty) {
    throw Exception('無效的 refresh token');
  }
  final apiResponse =
      dataSource.refreshToken(RefreshTokenRequest(refreshToken: refreshToken));

  return apiResponse;
}

/// 重試原始請求
Future<Response<dynamic>> _retryRequest(
    RequestOptions requestOptions, String newToken) async {
  final options = Options(
    method: requestOptions.method,
    headers: {...requestOptions.headers, 'Authorization': 'Bearer $newToken'},
  );

  final dio = NetworkInterface.getInstance().dio;
  return await dio.request(
    requestOptions.path,
    data: requestOptions.data,
    queryParameters: requestOptions.queryParameters,
    options: options,
  );
}

void refreshTokenExpire(BuildContext? context) async {
  if (context == null) return;

  final confirm = await showDefaultDialog(
    context,
    title: AppStrings.sessionExpiredTitle,
    content: AppStrings.sessionExpiredContent,
    rightButtonText: AppStrings.sessionExpiredConfirm,
    leftButtonText: AppStrings.cancel,
  );

  if (confirm == true) {
    // 清除 Token
    TokenManager.clearTokens();

    // 清除狀態
    final container = ProviderScope.containerOf(context, listen: false);
    container.read(authControllerProvider.notifier).logout();
    context.router.replaceAll([const LoginRoute()]);
  } else {
    SystemNavigator.pop();
  }
}
