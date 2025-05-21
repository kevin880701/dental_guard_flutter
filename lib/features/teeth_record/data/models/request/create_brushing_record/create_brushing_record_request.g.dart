// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brushing_record_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBrushingRecordRequestImpl _$$CreateBrushingRecordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBrushingRecordRequestImpl(
      userId: json['user_id'] as String,
      score: (json['score'] as num).toInt(),
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$$CreateBrushingRecordRequestImplToJson(
        _$CreateBrushingRecordRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'score': instance.score,
      'remarks': instance.remarks,
    };
