// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetPasswordRequestImpl _$$SetPasswordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SetPasswordRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SetPasswordRequestImplToJson(
        _$SetPasswordRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
