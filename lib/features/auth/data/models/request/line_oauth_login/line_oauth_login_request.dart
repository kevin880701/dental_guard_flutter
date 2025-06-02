import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_oauth_login_request.freezed.dart';
part 'line_oauth_login_request.g.dart';

@freezed
class LineOAuthLoginRequest with _$LineOAuthLoginRequest {
  const factory LineOAuthLoginRequest({
    @JsonKey(name: 'id_token') required String idToken,
  }) = _LineOAuthLoginRequest;

  factory LineOAuthLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LineOAuthLoginRequestFromJson(json);
}
