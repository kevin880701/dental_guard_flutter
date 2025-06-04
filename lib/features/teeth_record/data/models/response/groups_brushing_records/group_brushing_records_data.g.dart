// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_brushing_records_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupBrushingRecordsDataImpl _$$GroupBrushingRecordsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupBrushingRecordsDataImpl(
      group: GroupData.fromJson(json['group'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
              ?.map((e) =>
                  GroupUserBrushingRecords.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GroupBrushingRecordsDataImplToJson(
        _$GroupBrushingRecordsDataImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'users': instance.users,
    };

_$GroupUserBrushingRecordsImpl _$$GroupUserBrushingRecordsImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupUserBrushingRecordsImpl(
      user: UserInfoData.fromJson(json['user'] as Map<String, dynamic>),
      brushingRecords: (json['brushing_records'] as List<dynamic>?)
              ?.map(
                  (e) => BrushingRecordData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GroupUserBrushingRecordsImplToJson(
        _$GroupUserBrushingRecordsImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'brushing_records': instance.brushingRecords,
    };
