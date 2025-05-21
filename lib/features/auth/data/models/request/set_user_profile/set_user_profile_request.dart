import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_user_profile_request.freezed.dart';
part 'set_user_profile_request.g.dart';

@freezed
class SetUserProfileRequest with _$SetUserProfileRequest {
  const factory SetUserProfileRequest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'birthday') String? birthday, // ISO 8601 格式，例如 "1990-01-01"
  }) = _SetUserProfileRequest;

  factory SetUserProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$SetUserProfileRequestFromJson(json);
}
