import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_member_request.freezed.dart';
part 'group_member_request.g.dart';

@freezed
class GroupMemberRequest with _$GroupMemberRequest {
  const factory GroupMemberRequest({
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'user_id') required String userId,
  }) = _GroupMemberRequest;

  factory GroupMemberRequest.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberRequestFromJson(json);
}
