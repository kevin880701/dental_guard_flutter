// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_user_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetUserProfileRequestImpl _$$SetUserProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SetUserProfileRequestImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$$SetUserProfileRequestImplToJson(
        _$SetUserProfileRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar_url': instance.avatarUrl,
      'birthday': instance.birthday,
    };
