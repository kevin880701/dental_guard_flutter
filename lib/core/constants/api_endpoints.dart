class ApiEndPoint {
  static const String domain = 'https://letgo.jieniguicare.org';
  // static const String domain = 'http://192.168.54.194';

  // auth
  static const String login = '/user/login';
  static const String userInfo = '/user/info';
  static const String userProfile = '/user/profile';
  static const String sendVerificationCode = '/user/send-verification-code';
  static const String enterVerificationCode = '/user/enter-verification-code';
  static const String verifyCode = '/user/verify-code';
  static const String refreshToken = '/user/refresh-token';
  static const String registerPassword = '/user/register-password';
  static const String resetPassword = '/user/reset-password';

}
