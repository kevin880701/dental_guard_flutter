import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_brushing_stats_request.freezed.dart';
part 'get_user_brushing_stats_request.g.dart';

@freezed
class GetUserBrushingStatsRequest with _$GetUserBrushingStatsRequest {
  const factory GetUserBrushingStatsRequest({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'time_space') required String timeSpace,
    @JsonKey(name: 'time_zone') required String timeZone,
  }) = _GetUserBrushingStatsRequest;

  factory GetUserBrushingStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetUserBrushingStatsRequestFromJson(json);
}
