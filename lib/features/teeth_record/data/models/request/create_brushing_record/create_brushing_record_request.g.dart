// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brushing_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBrushingRecordRequestImpl _$$CreateBrushingRecordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBrushingRecordRequestImpl(
      userId: json['user_id'] as String,
      name: json['name'] as String?,
      remarks: json['remarks'] as String?,
      analyzeResultId: json['analyze_result_id'] as String?,
    );

Map<String, dynamic> _$$CreateBrushingRecordRequestImplToJson(
        _$CreateBrushingRecordRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'remarks': instance.remarks,
      'analyze_result_id': instance.analyzeResultId,
    };
