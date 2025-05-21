import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_password_request.freezed.dart';
part 'set_password_request.g.dart';

@freezed
class SetPasswordRequest with _$SetPasswordRequest {
  const factory SetPasswordRequest({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _SetPasswordRequest;

  factory SetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$SetPasswordRequestFromJson(json);
}
