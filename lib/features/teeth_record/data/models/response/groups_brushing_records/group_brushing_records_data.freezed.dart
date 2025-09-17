// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_brushing_records_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupsBrushingRecordsResponse _$GroupsBrushingRecordsResponseFromJson(
    Map<String, dynamic> json) {
  return _GroupsBrushingRecordsResponse.fromJson(json);
}

/// @nodoc
mixin _$GroupsBrushingRecordsResponse {
  @JsonKey(name: 'records')
  List<GroupBrushingRecordsData> get records =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationData? get pagination => throw _privateConstructorUsedError;

  /// Serializes this GroupsBrushingRecordsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupsBrushingRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupsBrushingRecordsResponseCopyWith<GroupsBrushingRecordsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsBrushingRecordsResponseCopyWith<$Res> {
  factory $GroupsBrushingRecordsResponseCopyWith(
          GroupsBrushingRecordsResponse value,
          $Res Function(GroupsBrushingRecordsResponse) then) =
      _$GroupsBrushingRecordsResponseCopyWithImpl<$Res,
          GroupsBrushingRecordsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<GroupBrushingRecordsData> records,
      @JsonKey(name: 'pagination') PaginationData? pagination});

  $PaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$GroupsBrushingRecordsResponseCopyWithImpl<$Res,
        $Val extends GroupsBrushingRecordsResponse>
    implements $GroupsBrushingRecordsResponseCopyWith<$Res> {
  _$GroupsBrushingRecordsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsBrushingRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<GroupBrushingRecordsData>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
    ) as $Val);
  }

  /// Create a copy of GroupsBrushingRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationDataCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationDataCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupsBrushingRecordsResponseImplCopyWith<$Res>
    implements $GroupsBrushingRecordsResponseCopyWith<$Res> {
  factory _$$GroupsBrushingRecordsResponseImplCopyWith(
          _$GroupsBrushingRecordsResponseImpl value,
          $Res Function(_$GroupsBrushingRecordsResponseImpl) then) =
      __$$GroupsBrushingRecordsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<GroupBrushingRecordsData> records,
      @JsonKey(name: 'pagination') PaginationData? pagination});

  @override
  $PaginationDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$GroupsBrushingRecordsResponseImplCopyWithImpl<$Res>
    extends _$GroupsBrushingRecordsResponseCopyWithImpl<$Res,
        _$GroupsBrushingRecordsResponseImpl>
    implements _$$GroupsBrushingRecordsResponseImplCopyWith<$Res> {
  __$$GroupsBrushingRecordsResponseImplCopyWithImpl(
      _$GroupsBrushingRecordsResponseImpl _value,
      $Res Function(_$GroupsBrushingRecordsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsBrushingRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? pagination = freezed,
  }) {
    return _then(_$GroupsBrushingRecordsResponseImpl(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<GroupBrushingRecordsData>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupsBrushingRecordsResponseImpl
    implements _GroupsBrushingRecordsResponse {
  const _$GroupsBrushingRecordsResponseImpl(
      {@JsonKey(name: 'records')
      final List<GroupBrushingRecordsData> records = const [],
      @JsonKey(name: 'pagination') this.pagination})
      : _records = records;

  factory _$GroupsBrushingRecordsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GroupsBrushingRecordsResponseImplFromJson(json);

  final List<GroupBrushingRecordsData> _records;
  @override
  @JsonKey(name: 'records')
  List<GroupBrushingRecordsData> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationData? pagination;

  @override
  String toString() {
    return 'GroupsBrushingRecordsResponse(records: $records, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsBrushingRecordsResponseImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_records), pagination);

  /// Create a copy of GroupsBrushingRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsBrushingRecordsResponseImplCopyWith<
          _$GroupsBrushingRecordsResponseImpl>
      get copyWith => __$$GroupsBrushingRecordsResponseImplCopyWithImpl<
          _$GroupsBrushingRecordsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupsBrushingRecordsResponseImplToJson(
      this,
    );
  }
}

abstract class _GroupsBrushingRecordsResponse
    implements GroupsBrushingRecordsResponse {
  const factory _GroupsBrushingRecordsResponse(
      {@JsonKey(name: 'records') final List<GroupBrushingRecordsData> records,
      @JsonKey(name: 'pagination')
      final PaginationData? pagination}) = _$GroupsBrushingRecordsResponseImpl;

  factory _GroupsBrushingRecordsResponse.fromJson(Map<String, dynamic> json) =
      _$GroupsBrushingRecordsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'records')
  List<GroupBrushingRecordsData> get records;
  @override
  @JsonKey(name: 'pagination')
  PaginationData? get pagination;

  /// Create a copy of GroupsBrushingRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupsBrushingRecordsResponseImplCopyWith<
          _$GroupsBrushingRecordsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) {
  return _PaginationData.fromJson(json);
}

/// @nodoc
mixin _$PaginationData {
  @JsonKey(name: 'total_records')
  int get totalRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDataCopyWith<$Res> {
  factory $PaginationDataCopyWith(
          PaginationData value, $Res Function(PaginationData) then) =
      _$PaginationDataCopyWithImpl<$Res, PaginationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_records') int totalRecords,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class _$PaginationDataCopyWithImpl<$Res, $Val extends PaginationData>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRecords = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationDataImplCopyWith<$Res>
    implements $PaginationDataCopyWith<$Res> {
  factory _$$PaginationDataImplCopyWith(_$PaginationDataImpl value,
          $Res Function(_$PaginationDataImpl) then) =
      __$$PaginationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_records') int totalRecords,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class __$$PaginationDataImplCopyWithImpl<$Res>
    extends _$PaginationDataCopyWithImpl<$Res, _$PaginationDataImpl>
    implements _$$PaginationDataImplCopyWith<$Res> {
  __$$PaginationDataImplCopyWithImpl(
      _$PaginationDataImpl _value, $Res Function(_$PaginationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRecords = null,
    Object? totalPages = null,
    Object? currentPage = null,
    Object? pageSize = null,
  }) {
    return _then(_$PaginationDataImpl(
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDataImpl implements _PaginationData {
  const _$PaginationDataImpl(
      {@JsonKey(name: 'total_records') required this.totalRecords,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'page_size') required this.pageSize});

  factory _$PaginationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDataImplFromJson(json);

  @override
  @JsonKey(name: 'total_records')
  final int totalRecords;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;

  @override
  String toString() {
    return 'PaginationData(totalRecords: $totalRecords, totalPages: $totalPages, currentPage: $currentPage, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDataImpl &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalRecords, totalPages, currentPage, pageSize);

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDataImplCopyWith<_$PaginationDataImpl> get copyWith =>
      __$$PaginationDataImplCopyWithImpl<_$PaginationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDataImplToJson(
      this,
    );
  }
}

abstract class _PaginationData implements PaginationData {
  const factory _PaginationData(
          {@JsonKey(name: 'total_records') required final int totalRecords,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'current_page') required final int currentPage,
          @JsonKey(name: 'page_size') required final int pageSize}) =
      _$PaginationDataImpl;

  factory _PaginationData.fromJson(Map<String, dynamic> json) =
      _$PaginationDataImpl.fromJson;

  @override
  @JsonKey(name: 'total_records')
  int get totalRecords;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationDataImplCopyWith<_$PaginationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupBrushingRecordsData _$GroupBrushingRecordsDataFromJson(
    Map<String, dynamic> json) {
  return _GroupBrushingRecordsData.fromJson(json);
}

/// @nodoc
mixin _$GroupBrushingRecordsData {
  @JsonKey(name: 'group')
  GroupData get group => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  List<GroupUserBrushingRecords> get users =>
      throw _privateConstructorUsedError;

  /// Serializes this GroupBrushingRecordsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupBrushingRecordsDataCopyWith<GroupBrushingRecordsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupBrushingRecordsDataCopyWith<$Res> {
  factory $GroupBrushingRecordsDataCopyWith(GroupBrushingRecordsData value,
          $Res Function(GroupBrushingRecordsData) then) =
      _$GroupBrushingRecordsDataCopyWithImpl<$Res, GroupBrushingRecordsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group') GroupData group,
      @JsonKey(name: 'users') List<GroupUserBrushingRecords> users});

  $GroupDataCopyWith<$Res> get group;
}

/// @nodoc
class _$GroupBrushingRecordsDataCopyWithImpl<$Res,
        $Val extends GroupBrushingRecordsData>
    implements $GroupBrushingRecordsDataCopyWith<$Res> {
  _$GroupBrushingRecordsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupData,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<GroupUserBrushingRecords>,
    ) as $Val);
  }

  /// Create a copy of GroupBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupDataCopyWith<$Res> get group {
    return $GroupDataCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupBrushingRecordsDataImplCopyWith<$Res>
    implements $GroupBrushingRecordsDataCopyWith<$Res> {
  factory _$$GroupBrushingRecordsDataImplCopyWith(
          _$GroupBrushingRecordsDataImpl value,
          $Res Function(_$GroupBrushingRecordsDataImpl) then) =
      __$$GroupBrushingRecordsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group') GroupData group,
      @JsonKey(name: 'users') List<GroupUserBrushingRecords> users});

  @override
  $GroupDataCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupBrushingRecordsDataImplCopyWithImpl<$Res>
    extends _$GroupBrushingRecordsDataCopyWithImpl<$Res,
        _$GroupBrushingRecordsDataImpl>
    implements _$$GroupBrushingRecordsDataImplCopyWith<$Res> {
  __$$GroupBrushingRecordsDataImplCopyWithImpl(
      _$GroupBrushingRecordsDataImpl _value,
      $Res Function(_$GroupBrushingRecordsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? users = null,
  }) {
    return _then(_$GroupBrushingRecordsDataImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupData,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<GroupUserBrushingRecords>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupBrushingRecordsDataImpl implements _GroupBrushingRecordsData {
  const _$GroupBrushingRecordsDataImpl(
      {@JsonKey(name: 'group') required this.group,
      @JsonKey(name: 'users')
      final List<GroupUserBrushingRecords> users = const []})
      : _users = users;

  factory _$GroupBrushingRecordsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupBrushingRecordsDataImplFromJson(json);

  @override
  @JsonKey(name: 'group')
  final GroupData group;
  final List<GroupUserBrushingRecords> _users;
  @override
  @JsonKey(name: 'users')
  List<GroupUserBrushingRecords> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'GroupBrushingRecordsData(group: $group, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupBrushingRecordsDataImpl &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, group, const DeepCollectionEquality().hash(_users));

  /// Create a copy of GroupBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupBrushingRecordsDataImplCopyWith<_$GroupBrushingRecordsDataImpl>
      get copyWith => __$$GroupBrushingRecordsDataImplCopyWithImpl<
          _$GroupBrushingRecordsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupBrushingRecordsDataImplToJson(
      this,
    );
  }
}

abstract class _GroupBrushingRecordsData implements GroupBrushingRecordsData {
  const factory _GroupBrushingRecordsData(
          {@JsonKey(name: 'group') required final GroupData group,
          @JsonKey(name: 'users') final List<GroupUserBrushingRecords> users}) =
      _$GroupBrushingRecordsDataImpl;

  factory _GroupBrushingRecordsData.fromJson(Map<String, dynamic> json) =
      _$GroupBrushingRecordsDataImpl.fromJson;

  @override
  @JsonKey(name: 'group')
  GroupData get group;
  @override
  @JsonKey(name: 'users')
  List<GroupUserBrushingRecords> get users;

  /// Create a copy of GroupBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupBrushingRecordsDataImplCopyWith<_$GroupBrushingRecordsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupUserBrushingRecords _$GroupUserBrushingRecordsFromJson(
    Map<String, dynamic> json) {
  return _GroupUserBrushingRecords.fromJson(json);
}

/// @nodoc
mixin _$GroupUserBrushingRecords {
  @JsonKey(name: 'user')
  UserInfoData get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'brushing_records')
  List<BrushingRecordData> get brushingRecords =>
      throw _privateConstructorUsedError;

  /// Serializes this GroupUserBrushingRecords to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupUserBrushingRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupUserBrushingRecordsCopyWith<GroupUserBrushingRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupUserBrushingRecordsCopyWith<$Res> {
  factory $GroupUserBrushingRecordsCopyWith(GroupUserBrushingRecords value,
          $Res Function(GroupUserBrushingRecords) then) =
      _$GroupUserBrushingRecordsCopyWithImpl<$Res, GroupUserBrushingRecords>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserInfoData user,
      @JsonKey(name: 'brushing_records')
      List<BrushingRecordData> brushingRecords});

  $UserInfoDataCopyWith<$Res> get user;
}

/// @nodoc
class _$GroupUserBrushingRecordsCopyWithImpl<$Res,
        $Val extends GroupUserBrushingRecords>
    implements $GroupUserBrushingRecordsCopyWith<$Res> {
  _$GroupUserBrushingRecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupUserBrushingRecords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? brushingRecords = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoData,
      brushingRecords: null == brushingRecords
          ? _value.brushingRecords
          : brushingRecords // ignore: cast_nullable_to_non_nullable
              as List<BrushingRecordData>,
    ) as $Val);
  }

  /// Create a copy of GroupUserBrushingRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoDataCopyWith<$Res> get user {
    return $UserInfoDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupUserBrushingRecordsImplCopyWith<$Res>
    implements $GroupUserBrushingRecordsCopyWith<$Res> {
  factory _$$GroupUserBrushingRecordsImplCopyWith(
          _$GroupUserBrushingRecordsImpl value,
          $Res Function(_$GroupUserBrushingRecordsImpl) then) =
      __$$GroupUserBrushingRecordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserInfoData user,
      @JsonKey(name: 'brushing_records')
      List<BrushingRecordData> brushingRecords});

  @override
  $UserInfoDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$GroupUserBrushingRecordsImplCopyWithImpl<$Res>
    extends _$GroupUserBrushingRecordsCopyWithImpl<$Res,
        _$GroupUserBrushingRecordsImpl>
    implements _$$GroupUserBrushingRecordsImplCopyWith<$Res> {
  __$$GroupUserBrushingRecordsImplCopyWithImpl(
      _$GroupUserBrushingRecordsImpl _value,
      $Res Function(_$GroupUserBrushingRecordsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupUserBrushingRecords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? brushingRecords = null,
  }) {
    return _then(_$GroupUserBrushingRecordsImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoData,
      brushingRecords: null == brushingRecords
          ? _value._brushingRecords
          : brushingRecords // ignore: cast_nullable_to_non_nullable
              as List<BrushingRecordData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupUserBrushingRecordsImpl implements _GroupUserBrushingRecords {
  const _$GroupUserBrushingRecordsImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'brushing_records')
      final List<BrushingRecordData> brushingRecords = const []})
      : _brushingRecords = brushingRecords;

  factory _$GroupUserBrushingRecordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupUserBrushingRecordsImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserInfoData user;
  final List<BrushingRecordData> _brushingRecords;
  @override
  @JsonKey(name: 'brushing_records')
  List<BrushingRecordData> get brushingRecords {
    if (_brushingRecords is EqualUnmodifiableListView) return _brushingRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brushingRecords);
  }

  @override
  String toString() {
    return 'GroupUserBrushingRecords(user: $user, brushingRecords: $brushingRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupUserBrushingRecordsImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._brushingRecords, _brushingRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_brushingRecords));

  /// Create a copy of GroupUserBrushingRecords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupUserBrushingRecordsImplCopyWith<_$GroupUserBrushingRecordsImpl>
      get copyWith => __$$GroupUserBrushingRecordsImplCopyWithImpl<
          _$GroupUserBrushingRecordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupUserBrushingRecordsImplToJson(
      this,
    );
  }
}

abstract class _GroupUserBrushingRecords implements GroupUserBrushingRecords {
  const factory _GroupUserBrushingRecords(
          {@JsonKey(name: 'user') required final UserInfoData user,
          @JsonKey(name: 'brushing_records')
          final List<BrushingRecordData> brushingRecords}) =
      _$GroupUserBrushingRecordsImpl;

  factory _GroupUserBrushingRecords.fromJson(Map<String, dynamic> json) =
      _$GroupUserBrushingRecordsImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  UserInfoData get user;
  @override
  @JsonKey(name: 'brushing_records')
  List<BrushingRecordData> get brushingRecords;

  /// Create a copy of GroupUserBrushingRecords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupUserBrushingRecordsImplCopyWith<_$GroupUserBrushingRecordsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
