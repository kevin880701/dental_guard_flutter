import 'package:freezed_annotation/freezed_annotation.dart';

part 'enter_verification_code_request.freezed.dart';
part 'enter_verification_code_request.g.dart';

@freezed
class EnterVerificationCodeRequest with _$EnterVerificationCodeRequest {
  const factory EnterVerificationCodeRequest({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'verification_code') required String verificationCode,
  }) = _EnterVerificationCodeRequest;

  factory EnterVerificationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$EnterVerificationCodeRequestFromJson(json);
}
