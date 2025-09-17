// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_brushing_records_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsBrushingRecordsResponseImpl
    _$$GroupsBrushingRecordsResponseImplFromJson(Map<String, dynamic> json) =>
        _$GroupsBrushingRecordsResponseImpl(
          records: (json['records'] as List<dynamic>?)
                  ?.map((e) => GroupBrushingRecordsData.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          pagination: json['pagination'] == null
              ? null
              : PaginationData.fromJson(
                  json['pagination'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GroupsBrushingRecordsResponseImplToJson(
        _$GroupsBrushingRecordsResponseImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
      'pagination': instance.pagination,
    };

_$PaginationDataImpl _$$PaginationDataImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDataImpl(
      totalRecords: (json['total_records'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationDataImplToJson(
        _$PaginationDataImpl instance) =>
    <String, dynamic>{
      'total_records': instance.totalRecords,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'page_size': instance.pageSize,
    };

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
