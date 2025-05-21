class TokenManager {
  static String? _accessToken;
  static String? _refreshToken;

  /// 設定 accessToken 或 refreshToken
  static void setTokens({String? accessToken, String? refreshToken}) {
    if (accessToken != null) {
      _accessToken = accessToken;
    }
    if (refreshToken != null) {
      _refreshToken = refreshToken;
    }
  }

  /// 清除 accessToken 和 refreshToken
  static void clearTokens() {
    _accessToken = null;
    _refreshToken = null;
  }

  /// 取得 accessToken
  static String? get accessToken => _accessToken;

  /// 取得 refreshToken
  static String? get refreshToken => _refreshToken;
}
