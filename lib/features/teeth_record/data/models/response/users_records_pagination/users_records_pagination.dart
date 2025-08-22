import 'package:freezed_annotation/freezed_annotation.dart';
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
