import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_groups_brushing_records_request.freezed.dart';
part 'get_groups_brushing_records_request.g.dart';

@freezed
class GetGroupsBrushingRecordsRequest with _$GetGroupsBrushingRecordsRequest {
  const factory GetGroupsBrushingRecordsRequest({
    @JsonKey(name: 'group_ids') required List<String> groupIds,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'time_zone') required String timeZone,
  }) = _GetGroupsBrushingRecordsRequest;

  factory GetGroupsBrushingRecordsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetGroupsBrushingRecordsRequestFromJson(json);
}
