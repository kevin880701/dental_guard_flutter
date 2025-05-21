// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthLoginRequestImpl _$$OAuthLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OAuthLoginRequestImpl(
      provider: (json['provider'] as num).toInt(),
      firebaseUid: json['firebase_uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$OAuthLoginRequestImplToJson(
        _$OAuthLoginRequestImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'firebase_uid': instance.firebaseUid,
      'email': instance.email,
      'name': instance.name,
    };
