// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BaseResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl<T> _$$BaseResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseResponseImpl<T>(
      returnCode: (json['returnCode'] as num).toInt(),
      message: json['message'] as String,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$BaseResponseImplToJson<T>(
  _$BaseResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'returnCode': instance.returnCode,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };
