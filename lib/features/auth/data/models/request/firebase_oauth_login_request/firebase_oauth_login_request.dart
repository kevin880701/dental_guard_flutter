import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_oauth_login_request.freezed.dart';
part 'firebase_oauth_login_request.g.dart';

@freezed
class FirebaseOAuthLoginRequest with _$FirebaseOAuthLoginRequest {
  const factory FirebaseOAuthLoginRequest({
    @JsonKey(name: 'login_type') required int loginType,
    @JsonKey(name: 'id_token') required String idToken,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'name') required String name,
  }) = _FirebaseOAuthLoginRequest;

  factory FirebaseOAuthLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$FirebaseOAuthLoginRequestFromJson(json);
}
