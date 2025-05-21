import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_login_request.freezed.dart';
part 'oauth_login_request.g.dart';

@freezed
class OAuthLoginRequest with _$OAuthLoginRequest {
  const factory OAuthLoginRequest({
    @JsonKey(name: 'provider') required int provider,
    @JsonKey(name: 'firebase_uid') required String firebaseUid,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'name') required String name,
  }) = _OAuthLoginRequest;

  factory OAuthLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$OAuthLoginRequestFromJson(json);
}
