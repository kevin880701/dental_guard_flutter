import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_group_member_extended_request.freezed.dart';
part 'add_group_member_extended_request.g.dart';

@freezed
class AddGroupMemberExtendedRequest with _$AddGroupMemberExtendedRequest {
  const factory AddGroupMemberExtendedRequest({
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'number') required String number,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'birthday') required String birthday, // ISO 8601 格式
    @JsonKey(name: 'gender') required int gender,
  }) = _AddGroupMemberExtendedRequest;

  factory AddGroupMemberExtendedRequest.fromJson(Map<String, dynamic> json) =>
      _$AddGroupMemberExtendedRequestFromJson(json);
}
