// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddStudentRequestBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddStudentRequestBody _$AddStudentRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AddStudentRequestBody(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      studentId: json['student_id'] as String,
      school: (json['school'] as num).toInt(),
      classroom: (json['classroom'] as num).toInt(),
      birth: json['birth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$AddStudentRequestBodyToJson(
        AddStudentRequestBody instance) =>
    <String, dynamic>{
      'user': instance.user,
      'student_id': instance.studentId,
      'school': instance.school,
      'classroom': instance.classroom,
      'birth': instance.birth,
      'gender': instance.gender,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      username: json['username'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      lineId: json['line_id'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'full_name': instance.fullName,
      'email': instance.email,
      'line_id': instance.lineId,
    };
