import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_records_search_request.freezed.dart';
part 'users_records_search_request.g.dart';

@freezed
class UsersRecordsSearchRequest with _$UsersRecordsSearchRequest {
  const factory UsersRecordsSearchRequest({
    @JsonKey(name: 'user_ids') required List<String> userIds,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'time_zone') required String timeZone,
  }) = _UsersRecordsSearchRequest;

  factory UsersRecordsSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$UsersRecordsSearchRequestFromJson(json);
}
