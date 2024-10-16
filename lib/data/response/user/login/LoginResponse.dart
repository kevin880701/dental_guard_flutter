
import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginResponse.freezed.dart';
part 'LoginResponse.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required int result,
    required String? token,
    required String? refreshToken,
    required UserInfo? info,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String name,
    required String account,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
