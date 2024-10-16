
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      result: (json['result'] as num).toInt(),
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      info: json['info'] == null
          ? null
          : UserInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'info': instance.info,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      name: json['name'] as String,
      account: json['account'] as String,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'account': instance.account,
    };
