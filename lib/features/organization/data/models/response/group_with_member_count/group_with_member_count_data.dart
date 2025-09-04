import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_with_member_count_data.freezed.dart';
part 'group_with_member_count_data.g.dart';

@freezed
class GroupWithMemberCountData with _$GroupWithMemberCountData {
  const factory GroupWithMemberCountData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'member_count') required int memberCount,
  }) = _GroupWithMemberCountData;

  factory GroupWithMemberCountData.fromJson(Map<String, dynamic> json) =>
      _$GroupWithMemberCountDataFromJson(json);
}