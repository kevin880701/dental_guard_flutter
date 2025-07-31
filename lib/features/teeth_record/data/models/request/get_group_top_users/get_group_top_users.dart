import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entity/rank_sort_criteria.dart';

part 'get_group_top_users.freezed.dart';
part 'get_group_top_users.g.dart';

@freezed
class GroupTopUsersRequest with _$GroupTopUsersRequest {
  const factory GroupTopUsersRequest({
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'sort_criteria') required RankSortCriteria sortCriteria,
    @JsonKey(name: 'limit') required int limit,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'time_zone') required String timeZone,
  }) = _GroupTopUsersRequest;

  factory GroupTopUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$GroupTopUsersRequestFromJson(json);
}