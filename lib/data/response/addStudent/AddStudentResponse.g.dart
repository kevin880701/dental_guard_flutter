// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddStudentResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddStudentResponse _$AddStudentResponseFromJson(Map<String, dynamic> json) =>
    AddStudentResponse(
      id: (json['id'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      studentId: json['student_id'] as String,
      school: (json['school'] as num).toInt(),
      classroom: (json['classroom'] as num).toInt(),
      birth: json['birth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$AddStudentResponseToJson(AddStudentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'student_id': instance.studentId,
      'school': instance.school,
      'classroom': instance.classroom,
      'birth': instance.birth,
      'gender': instance.gender,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      lineId: json['line_id'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'full_name': instance.fullName,
      'email': instance.email,
      'line_id': instance.lineId,
    };
