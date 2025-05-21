// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enter_verification_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnterVerificationCodeRequestImpl _$$EnterVerificationCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EnterVerificationCodeRequestImpl(
      email: json['email'] as String,
      verificationCode: json['verification_code'] as String,
    );

Map<String, dynamic> _$$EnterVerificationCodeRequestImplToJson(
        _$EnterVerificationCodeRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'verification_code': instance.verificationCode,
    };
