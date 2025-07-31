import 'package:dental_guard_flutter/features/auth/data/models/response/user_info/user_info_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../brushing_record/brushing_record_data.dart';

part 'user_records.freezed.dart';
part 'user_records.g.dart';

@freezed
class UserRecords with _$UserRecords {
  const factory UserRecords({
    @JsonKey(name: 'user') required UserInfoData user,
    @JsonKey(name: 'brushing_records') List<BrushingRecordData>? brushingRecords,
  }) = _UserRecords;

  factory UserRecords.fromJson(Map<String, dynamic> json) =>
      _$UserRecordsFromJson(json);
}
