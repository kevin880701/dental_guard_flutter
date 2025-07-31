// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_top_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupTopUserImpl _$$GroupTopUserImplFromJson(Map<String, dynamic> json) =>
    _$GroupTopUserImpl(
      rank: (json['rank'] as num).toInt(),
      userName: json['user_name'] as String,
      userId: json['user_id'] as String,
      groupId: json['group_id'] as String,
      groupName: json['group_name'] as String,
      avgPlaquePercent: (json['avg_plaque_percent'] as num).toDouble(),
      recordCount: (json['record_count'] as num).toInt(),
    );

Map<String, dynamic> _$$GroupTopUserImplToJson(_$GroupTopUserImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'user_name': instance.userName,
      'user_id': instance.userId,
      'group_id': instance.groupId,
      'group_name': instance.groupName,
      'avg_plaque_percent': instance.avgPlaquePercent,
      'record_count': instance.recordCount,
    };
