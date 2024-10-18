import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginRequestBody.freezed.dart';
part 'LoginRequestBody.g.dart';

@freezed
class LoginRequestBody with _$LoginRequestBody {
  const factory LoginRequestBody({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _LoginRequestBody;

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);
}
