class ApiEndPoint {
  // 開發環境
  static const String domain = serverUrl + apiEndpoint;

  // 正式環境
  // static const String serverUrl = "https://prod.com";
  // 開發環境
  static const String serverUrl = "http://stage:8180";
  static const String apiEndpoint = "/v1/";

  // User
  static const String user = "user";
  static const String userLogin = "user/login";
}
