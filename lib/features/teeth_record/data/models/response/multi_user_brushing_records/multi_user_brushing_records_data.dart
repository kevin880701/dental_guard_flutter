import 'package:dental_guard_flutter/features/auth/data/models/response/user_info/user_info_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../brushing_record/brushing_record_data.dart';

part 'multi_user_brushing_records_data.freezed.dart';
part 'multi_user_brushing_records_data.g.dart';

@freezed
class MultiUserBrushingRecordsData with _$MultiUserBrushingRecordsData {
  const factory MultiUserBrushingRecordsData({
    @JsonKey(name: 'user') required UserInfoData user,
    @JsonKey(name: 'brushing_records') required List<BrushingRecordData> brushingRecords,
  }) = _MultiUserBrushingRecordsData;

  factory MultiUserBrushingRecordsData.fromJson(Map<String, dynamic> json) =>
      _$MultiUserBrushingRecordsDataFromJson(json);
}
