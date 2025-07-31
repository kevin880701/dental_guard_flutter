// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRecordsImpl _$$UserRecordsImplFromJson(Map<String, dynamic> json) =>
    _$UserRecordsImpl(
      user: UserInfoData.fromJson(json['user'] as Map<String, dynamic>),
      brushingRecords: (json['brushing_records'] as List<dynamic>?)
          ?.map((e) => BrushingRecordData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserRecordsImplToJson(_$UserRecordsImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'brushing_records': instance.brushingRecords,
    };
