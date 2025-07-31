// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group_top_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupTopUsersRequestImpl _$$GroupTopUsersRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupTopUsersRequestImpl(
      groupId: json['group_id'] as String,
      sortCriteria:
          $enumDecode(_$RankSortCriteriaEnumMap, json['sort_criteria']),
      limit: (json['limit'] as num).toInt(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      timeZone: json['time_zone'] as String,
    );

Map<String, dynamic> _$$GroupTopUsersRequestImplToJson(
        _$GroupTopUsersRequestImpl instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'sort_criteria': _$RankSortCriteriaEnumMap[instance.sortCriteria]!,
      'limit': instance.limit,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'time_zone': instance.timeZone,
    };

const _$RankSortCriteriaEnumMap = {
  RankSortCriteria.plaquePercent: 'plaque_percent',
  RankSortCriteria.recordCount: 'record_count',
};
