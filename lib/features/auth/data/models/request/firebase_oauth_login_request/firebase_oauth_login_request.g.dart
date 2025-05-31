// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_oauth_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseOAuthLoginRequestImpl _$$FirebaseOAuthLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseOAuthLoginRequestImpl(
      loginType: (json['login_type'] as num).toInt(),
      idToken: json['id_token'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FirebaseOAuthLoginRequestImplToJson(
        _$FirebaseOAuthLoginRequestImpl instance) =>
    <String, dynamic>{
      'login_type': instance.loginType,
      'id_token': instance.idToken,
      'email': instance.email,
      'name': instance.name,
    };
