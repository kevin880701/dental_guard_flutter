// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserProfileRequestImpl _$$UpdateUserProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserProfileRequestImpl(
      userId: json['user_id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      birthday: json['birthday'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdateUserProfileRequestImplToJson(
        _$UpdateUserProfileRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar_url': instance.avatarUrl,
      'birthday': instance.birthday,
      'gender': instance.gender,
    };
