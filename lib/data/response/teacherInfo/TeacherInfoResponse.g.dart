// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TeacherInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherInfoResponseImpl _$$TeacherInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherInfoResponseImpl(
      id: (json['id'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      school: (json['school'] as num).toInt(),
      gender: json['gender'] as String,
      birth: json['birth'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$$TeacherInfoResponseImplToJson(
        _$TeacherInfoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'school': instance.school,
      'gender': instance.gender,
      'birth': instance.birth,
      'phone_number': instance.phoneNumber,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      fullName: json['full_name'] as String?,
      email: json['email'] as String,
      lineId: json['line_id'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'full_name': instance.fullName,
      'email': instance.email,
      'line_id': instance.lineId,
    };
