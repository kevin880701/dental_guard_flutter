import 'package:freezed_annotation/freezed_annotation.dart';

part 'AnalyzeTeethResponse.freezed.dart';
part 'AnalyzeTeethResponse.g.dart';

@freezed
class AnalyzeTeethResponse with _$AnalyzeTeethResponse {
  const factory AnalyzeTeethResponse({
    @JsonKey(name: 'teethRangePath') required String teethRangePath,
    @JsonKey(name: 'teethRangeDetectPath') required String teethRangeDetectPath,
  }) = _AnalyzeTeethResponse;

  factory AnalyzeTeethResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeTeethResponseFromJson(json);
}
