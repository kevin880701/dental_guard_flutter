// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreateTeethRecordRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTeethRecordRequestBodyImpl _$$CreateTeethRecordRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTeethRecordRequestBodyImpl(
      student: (json['student'] as num).toInt(),
      imagesPath: json['images_path'] as String,
      dentalPlaqueCount: json['dental_plaque_count'] as String,
    );

Map<String, dynamic> _$$CreateTeethRecordRequestBodyImplToJson(
        _$CreateTeethRecordRequestBodyImpl instance) =>
    <String, dynamic>{
      'student': instance.student,
      'images_path': instance.imagesPath,
      'dental_plaque_count': instance.dentalPlaqueCount,
    };
