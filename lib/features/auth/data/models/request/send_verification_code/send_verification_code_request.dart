import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_verification_code_request.freezed.dart';
part 'send_verification_code_request.g.dart';

@freezed
class SendVerificationCodeRequest with _$SendVerificationCodeRequest {
  const factory SendVerificationCodeRequest({
    @JsonKey(name: 'email') required String email,
  }) = _SendVerificationCodeRequest;

  factory SendVerificationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeRequestFromJson(json);
}
