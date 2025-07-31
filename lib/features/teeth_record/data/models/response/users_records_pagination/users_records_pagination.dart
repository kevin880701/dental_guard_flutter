import 'package:dental_guard_flutter/features/auth/data/models/response/user_info/user_info_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../brushing_record/brushing_record_data.dart';
import '../pagination/pagination.dart';
import '../user_records/user_records.dart';

part 'users_records_pagination.freezed.dart';
part 'users_records_pagination.g.dart';

@freezed
class UsersRecordsPagination with _$UsersRecordsPagination {
  const factory UsersRecordsPagination({
    @JsonKey(name: 'records') List<UserRecords>? records,
    @JsonKey(name: 'pagination') Pagination? pagination,
  }) = _UsersRecordsPagination;

  factory UsersRecordsPagination.fromJson(Map<String, dynamic> json) =>
      _$UsersRecordsPaginationFromJson(json);
}
