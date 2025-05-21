// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyze_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyzeResultDataImpl _$$AnalyzeResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyzeResultDataImpl(
      id: json['id'] as String,
      analyzePath: json['analyze_path'] as String,
      score: (json['score'] as num).toDouble(),
      isSuccess: (json['is_success'] as num).toInt(),
      mark: json['mark'] as String,
      execTime: json['exec_time'] as String,
      teethInfo: json['teeth_info'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$AnalyzeResultDataImplToJson(
        _$AnalyzeResultDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'analyze_path': instance.analyzePath,
      'score': instance.score,
      'is_success': instance.isSuccess,
      'mark': instance.mark,
      'exec_time': instance.execTime,
      'teeth_info': instance.teethInfo,
      'created_at': instance.createdAt.toIso8601String(),
    };
