import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_top_user.freezed.dart';
part 'group_top_user.g.dart';

@freezed
class GroupTopUser with _$GroupTopUser {
  const factory GroupTopUser({
    @JsonKey(name: 'rank') required int rank,
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'group_name') required String groupName,
    @JsonKey(name: 'avg_plaque_percent') required double avgPlaquePercent,
    @JsonKey(name: 'record_count') required int recordCount,
  }) = _GroupTopUser;

  factory GroupTopUser.fromJson(Map<String, dynamic> json) =>
      _$GroupTopUserFromJson(json);
}
