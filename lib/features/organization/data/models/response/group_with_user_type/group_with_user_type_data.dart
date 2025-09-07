import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_with_user_type_data.freezed.dart';
part 'group_with_user_type_data.g.dart';

@freezed
class GroupWithUserTypeData with _$GroupWithUserTypeData {
  const factory GroupWithUserTypeData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'member_count') required int memberCount,
    @JsonKey(name: 'manager_count') required int managerCount,
    @JsonKey(name: 'admin_count') required int adminCount,
    @JsonKey(name: 'type') String? type, // user在該群組的角色：user, manager, admin
  }) = _GroupWithUserTypeData;

  factory GroupWithUserTypeData.fromJson(Map<String, dynamic> json) =>
      _$GroupWithUserTypeDataFromJson(json);
}