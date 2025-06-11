import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_multi_user_brushing_records_request.freezed.dart';
part 'get_multi_user_brushing_records_request.g.dart';

@freezed
class GetMultiUserBrushingRecordsRequest with _$GetMultiUserBrushingRecordsRequest {
  const factory GetMultiUserBrushingRecordsRequest({
    @JsonKey(name: 'user_ids') required List<String> userIds,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
  }) = _GetMultiUserBrushingRecordsRequest;

  factory GetMultiUserBrushingRecordsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMultiUserBrushingRecordsRequestFromJson(json);
}
