import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_result_data.freezed.dart';
part 'analyze_result_data.g.dart';

@freezed
class AnalyzeResultData with _$AnalyzeResultData {
  const factory AnalyzeResultData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'analyze_path') required String analyzePath,
    @JsonKey(name: 'score') required double score,
    @JsonKey(name: 'is_success') required int isSuccess,
    @JsonKey(name: 'mark') required String mark,
    @JsonKey(name: 'exec_time') required String execTime,
    @JsonKey(name: 'teeth_info') required List<TeethInfo> teethInfo,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _AnalyzeResultData;

  factory AnalyzeResultData.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeResultDataFromJson(json);
}


@freezed
class TeethInfo with _$TeethInfo {
  const factory TeethInfo({
    required int x,
    required int y,
    required int w,
    required int h,
  }) = _TeethInfo;

  factory TeethInfo.fromJson(Map<String, dynamic> json) =>
      _$TeethInfoFromJson(json);
}