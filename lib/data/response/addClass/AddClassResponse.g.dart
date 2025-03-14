// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddClassResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddClassResponseImpl _$$AddClassResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddClassResponseImpl(
      id: (json['id'] as num).toInt(),
      school: (json['school'] as num).toInt(),
      grade: json['grade'] as String,
      className: json['class_name'] as String,
      teachers: (json['teachers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$AddClassResponseImplToJson(
        _$AddClassResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'school': instance.school,
      'grade': instance.grade,
      'class_name': instance.className,
      'teachers': instance.teachers,
    };
