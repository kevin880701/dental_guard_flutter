// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_user_brushing_records_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiUserBrushingRecordsDataImpl _$$MultiUserBrushingRecordsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MultiUserBrushingRecordsDataImpl(
      user: UserInfoData.fromJson(json['user'] as Map<String, dynamic>),
      brushingRecords: (json['brushing_records'] as List<dynamic>?)
          ?.map((e) => BrushingRecordData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MultiUserBrushingRecordsDataImplToJson(
        _$MultiUserBrushingRecordsDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'brushing_records': instance.brushingRecords,
    };
