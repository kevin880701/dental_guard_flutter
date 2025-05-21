import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_group_request.freezed.dart';
part 'create_group_request.g.dart';

@freezed
class CreateGroupRequest with _$CreateGroupRequest {
  const factory CreateGroupRequest({
    @JsonKey(name: 'organization_id') required String organizationId,
    @JsonKey(name: 'group_name') required String groupName,
    @JsonKey(name: 'user_id') required String userId,
  }) = _CreateGroupRequest;

  factory CreateGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupRequestFromJson(json);
}
