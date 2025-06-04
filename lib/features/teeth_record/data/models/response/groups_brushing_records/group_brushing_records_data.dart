import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../../../organization/data/models/response/group/group_data.dart';
import '../brushing_record/brushing_record_data.dart';

part 'group_brushing_records_data.freezed.dart';
part 'group_brushing_records_data.g.dart';

@freezed
class GroupBrushingRecordsData with _$GroupBrushingRecordsData {
  const factory GroupBrushingRecordsData({
    @JsonKey(name: 'group') required GroupData group,
    @JsonKey(name: 'users') @Default([]) List<GroupUserBrushingRecords> users,
  }) = _GroupBrushingRecordsData;

  factory GroupBrushingRecordsData.fromJson(Map<String, dynamic> json) =>
      _$GroupBrushingRecordsDataFromJson(json);
}

@freezed
class GroupUserBrushingRecords with _$GroupUserBrushingRecords {
  const factory GroupUserBrushingRecords({
    @JsonKey(name: 'user') required UserInfoData user,
    @JsonKey(name: 'brushing_records') @Default([]) List<BrushingRecordData> brushingRecords,
  }) = _GroupUserBrushingRecords;

  factory GroupUserBrushingRecords.fromJson(Map<String, dynamic> json) =>
      _$GroupUserBrushingRecordsFromJson(json);
}
