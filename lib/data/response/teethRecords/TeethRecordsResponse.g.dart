// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TeethRecordsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeethRecordsResponseImpl _$$TeethRecordsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TeethRecordsResponseImpl(
      id: (json['id'] as num).toInt(),
      student: (json['student'] as num).toInt(),
      dateTime: json['date_time'] as String,
      imagesPath: json['images_path'] as String,
      dentalPlaqueCount: (json['dental_plaque_count'] as num).toInt(),
    );

Map<String, dynamic> _$$TeethRecordsResponseImplToJson(
        _$TeethRecordsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'date_time': instance.dateTime,
      'images_path': instance.imagesPath,
      'dental_plaque_count': instance.dentalPlaqueCount,
    };
