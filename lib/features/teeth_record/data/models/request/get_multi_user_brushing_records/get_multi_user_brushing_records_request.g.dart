// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_multi_user_brushing_records_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMultiUserBrushingRecordsRequestImpl
    _$$GetMultiUserBrushingRecordsRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$GetMultiUserBrushingRecordsRequestImpl(
          userIds: (json['user_ids'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          startDate: json['start_date'] as String,
          endDate: json['end_date'] as String,
        );

Map<String, dynamic> _$$GetMultiUserBrushingRecordsRequestImplToJson(
        _$GetMultiUserBrushingRecordsRequestImpl instance) =>
    <String, dynamic>{
      'user_ids': instance.userIds,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
