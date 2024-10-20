// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnalyzeTeethResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyzeTeethResponseImpl _$$AnalyzeTeethResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyzeTeethResponseImpl(
      apiStatus: (json['API status'] as num).toInt(),
      percentagePlaqueTotal: json['percentage_plaque_total'] as String,
      teethRangePath: json['teethRangePath'] as String,
      teethRangeDetectPath: json['teethRangeDetectPath'] as String,
    );

Map<String, dynamic> _$$AnalyzeTeethResponseImplToJson(
        _$AnalyzeTeethResponseImpl instance) =>
    <String, dynamic>{
      'API status': instance.apiStatus,
      'percentage_plaque_total': instance.percentagePlaqueTotal,
      'teethRangePath': instance.teethRangePath,
      'teethRangeDetectPath': instance.teethRangeDetectPath,
    };
