import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginResponse.freezed.dart';
part 'LoginResponse.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'tokens') required Tokens tokens,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') required String? username,
    @JsonKey(name: 'full_name') required String? fullName,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'line_id') required String? lineId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    @JsonKey(name: 'refresh') required String refresh,
    @JsonKey(name: 'access') required String access,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
