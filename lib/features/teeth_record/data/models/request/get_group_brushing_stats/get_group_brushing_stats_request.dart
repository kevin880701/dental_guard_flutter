import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_group_brushing_stats_request.freezed.dart';
part 'get_group_brushing_stats_request.g.dart';

@freezed
class GetGroupBrushingStatsRequest with _$GetGroupBrushingStatsRequest {
  const factory GetGroupBrushingStatsRequest({
    @JsonKey(name: 'group_id') required String groupId,
    @JsonKey(name: 'start_date') required String startDate, // ISO8601 格式
    @JsonKey(name: 'end_date') required String endDate,     // ISO8601 格式
    @JsonKey(name: 'time_space') required String timeSpace,
    @JsonKey(name: 'time_zone') required String timeZone,
  }) = _GetGroupBrushingStatsRequest;

  factory GetGroupBrushingStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetGroupBrushingStatsRequestFromJson(json);
}
