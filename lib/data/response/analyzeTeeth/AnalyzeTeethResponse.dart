import 'package:json_annotation/json_annotation.dart';

part 'AnalyzeTeethResponse.g.dart';

@JsonSerializable()
class AnalyzeTeethResponse {
  @JsonKey(name: 'teethRangePath')
  final String teethRangePath;

  @JsonKey(name: 'teethRangeDetectPath')
  final String teethRangeDetectPath;

  AnalyzeTeethResponse({
    required this.teethRangePath,
    required this.teethRangeDetectPath,
  });

  factory AnalyzeTeethResponse.fromJson(Map<String, dynamic> json) => _$AnalyzeTeethResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AnalyzeTeethResponseToJson(this);
}
