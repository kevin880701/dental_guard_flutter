import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../auth/data/models/response/user_info/user_info_data.dart';
import '../../../../../organization/data/models/response/group/group_data.dart';
import '../brushing_record/brushing_record_data.dart';

part 'group_brushing_records_data.freezed.dart';
part 'group_brushing_records_data.g.dart';

@freezed
class GroupsBrushingRecordsResponse with _$GroupsBrushingRecordsResponse {
  const factory GroupsBrushingRecordsResponse({
    @JsonKey(name: 'records') @Default([]) List<GroupBrushingRecordsData> records,
    @JsonKey(name: 'pagination') PaginationData? pagination,
  }) = _GroupsBrushingRecordsResponse;

  factory GroupsBrushingRecordsResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupsBrushingRecordsResponseFromJson(json);
}

@freezed
class PaginationData with _$PaginationData {
  const factory PaginationData({
    @JsonKey(name: 'total_records') required int totalRecords,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'page_size') required int pageSize,
  }) = _PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
}

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
