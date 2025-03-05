import 'package:freezed_annotation/freezed_annotation.dart';

part 'AnalyzeTeethResponse.freezed.dart';
part 'AnalyzeTeethResponse.g.dart';

@freezed
class AnalyzeTeethResponse with _$AnalyzeTeethResponse {
  const factory AnalyzeTeethResponse({
    @JsonKey(name: 'API status') int? apiStatus,
    @JsonKey(name: 'percentage_plaque_total') String? percentagePlaqueTotal,
    @JsonKey(name: 'teethRangePath') String? teethRangePath,
    @JsonKey(name: 'teethRangeDetectPath') String? teethRangeDetectPath,
    @JsonKey(name: 'originalImagePath') String? teethOriginalImagePath,
  }) = _AnalyzeTeethResponse;

  factory AnalyzeTeethResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalyzeTeethResponseFromJson(json);
}
