// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddClassRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddClassRequestBodyImpl _$$AddClassRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$AddClassRequestBodyImpl(
      school: (json['school'] as num).toInt(),
      grade: json['grade'] as String,
      className: json['class_name'] as String,
      teachers: (json['teachers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$AddClassRequestBodyImplToJson(
        _$AddClassRequestBodyImpl instance) =>
    <String, dynamic>{
      'school': instance.school,
      'grade': instance.grade,
      'class_name': instance.className,
      'teachers': instance.teachers,
    };
