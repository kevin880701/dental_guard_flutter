import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../analyze/data/models/response/analyze_result/analyze_result_data.dart';

part 'brushing_record_data.freezed.dart';
part 'brushing_record_data.g.dart';

@freezed
class BrushingRecordData with _$BrushingRecordData {
  const factory BrushingRecordData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'remarks') String? remarks,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'analyze_result') required AnalyzeResultData analyzeResult,
  }) = _BrushingRecordData;

  factory BrushingRecordData.fromJson(Map<String, dynamic> json) =>
      _$BrushingRecordDataFromJson(json);
}
