import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_group_name_request.freezed.dart';
part 'update_group_name_request.g.dart';

@freezed
class UpdateGroupNameRequest with _$UpdateGroupNameRequest {
  const factory UpdateGroupNameRequest({
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'new_name') required String newName,
  }) = _UpdateGroupNameRequest;

  factory UpdateGroupNameRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateGroupNameRequestFromJson(json);
}
