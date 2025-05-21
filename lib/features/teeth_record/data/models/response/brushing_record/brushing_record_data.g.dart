// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brushing_record_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrushingRecordDataImpl _$$BrushingRecordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BrushingRecordDataImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      remarks: json['remarks'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      analyzeResult: AnalyzeResultData.fromJson(
          json['analyze_result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrushingRecordDataImplToJson(
        _$BrushingRecordDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'remarks': instance.remarks,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'analyze_result': instance.analyzeResult,
    };
