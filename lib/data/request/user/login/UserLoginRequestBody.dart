
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserLoginRequestBody.freezed.dart';
part 'UserLoginRequestBody.g.dart';

@freezed
class UserLoginRequestBody with _$UserLoginRequestBody {
  const factory UserLoginRequestBody({
    required String account,
    required String psw,
  }) = _UserLoginRequestBody;

  factory UserLoginRequestBody.fromJson(Map<String, dynamic> json) => _$UserLoginRequestBodyFromJson(json);
}
