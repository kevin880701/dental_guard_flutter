import 'package:json_annotation/json_annotation.dart';

part 'LoginRequestBody.g.dart';

@JsonSerializable()
class LoginRequestBody {
  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'password')
  final String password;

  LoginRequestBody({
    required this.username,
    required this.password,
  });

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) => _$LoginRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
