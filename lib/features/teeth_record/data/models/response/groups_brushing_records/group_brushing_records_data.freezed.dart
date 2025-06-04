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
