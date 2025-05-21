import 'package:dio/dio.dart';
import 'token_manager.dart';

class AuthInterceptor extends Interceptor {
  static final List<String> noAuthPaths = [
    '/login',
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
}
