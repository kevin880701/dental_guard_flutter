// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreateTeethRecordResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTeethRecordResponseImpl _$$CreateTeethRecordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTeethRecordResponseImpl(
      id: (json['id'] as num).toInt(),
      dateTime: json['date_time'] as String,
      imagesPath: json['images_path'] as String,
      dentalPlaqueCount: json['dental_plaque_count'] as String,
      student: (json['student'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateTeethRecordResponseImplToJson(
        _$CreateTeethRecordResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_time': instance.dateTime,
      'images_path': instance.imagesPath,
      'dental_plaque_count': instance.dentalPlaqueCount,
      'student': instance.student,
    };
