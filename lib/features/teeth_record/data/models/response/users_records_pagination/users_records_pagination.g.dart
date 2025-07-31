// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_records_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersRecordsPaginationImpl _$$UsersRecordsPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersRecordsPaginationImpl(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => UserRecords.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UsersRecordsPaginationImplToJson(
        _$UsersRecordsPaginationImpl instance) =>
    <String, dynamic>{
      'records': instance.records,
      'pagination': instance.pagination,
    };
