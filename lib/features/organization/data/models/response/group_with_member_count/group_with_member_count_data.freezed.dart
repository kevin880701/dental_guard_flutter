// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_with_member_count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupWithMemberCountData _$GroupWithMemberCountDataFromJson(
    Map<String, dynamic> json) {
  return _GroupWithMemberCountData.fromJson(json);
}

/// @nodoc
mixin _$GroupWithMemberCountData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_count')
  int get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this GroupWithMemberCountData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupWithMemberCountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupWithMemberCountDataCopyWith<GroupWithMemberCountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupWithMemberCountDataCopyWith<$Res> {
  factory $GroupWithMemberCountDataCopyWith(GroupWithMemberCountData value,
          $Res Function(GroupWithMemberCountData) then) =
      _$GroupWithMemberCountDataCopyWithImpl<$Res, GroupWithMemberCountData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'member_count') int memberCount,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$GroupWithMemberCountDataCopyWithImpl<$Res,
        $Val extends GroupWithMemberCountData>
    implements $GroupWithMemberCountDataCopyWith<$Res> {
  _$GroupWithMemberCountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupWithMemberCountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? memberCount = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupWithMemberCountDataImplCopyWith<$Res>
    implements $GroupWithMemberCountDataCopyWith<$Res> {
  factory _$$GroupWithMemberCountDataImplCopyWith(
          _$GroupWithMemberCountDataImpl value,
          $Res Function(_$GroupWithMemberCountDataImpl) then) =
      __$$GroupWithMemberCountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'member_count') int memberCount,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$GroupWithMemberCountDataImplCopyWithImpl<$Res>
    extends _$GroupWithMemberCountDataCopyWithImpl<$Res,
        _$GroupWithMemberCountDataImpl>
    implements _$$GroupWithMemberCountDataImplCopyWith<$Res> {
  __$$GroupWithMemberCountDataImplCopyWithImpl(
      _$GroupWithMemberCountDataImpl _value,
      $Res Function(_$GroupWithMemberCountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupWithMemberCountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? memberCount = null,
    Object? type = null,
  }) {
    return _then(_$GroupWithMemberCountDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      memberCount: null == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupWithMemberCountDataImpl implements _GroupWithMemberCountData {
  const _$GroupWithMemberCountDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'member_count') required this.memberCount,
      @JsonKey(name: 'type') required this.type});

  factory _$GroupWithMemberCountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupWithMemberCountDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'member_count')
  final int memberCount;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'GroupWithMemberCountData(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, memberCount: $memberCount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupWithMemberCountDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, createdAt, updatedAt, memberCount, type);

  /// Create a copy of GroupWithMemberCountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupWithMemberCountDataImplCopyWith<_$GroupWithMemberCountDataImpl>
      get copyWith => __$$GroupWithMemberCountDataImplCopyWithImpl<
          _$GroupWithMemberCountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupWithMemberCountDataImplToJson(
      this,
    );
  }
}

abstract class _GroupWithMemberCountData implements GroupWithMemberCountData {
  const factory _GroupWithMemberCountData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          @JsonKey(name: 'member_count') required final int memberCount,
          @JsonKey(name: 'type') required final String type}) =
      _$GroupWithMemberCountDataImpl;

  factory _GroupWithMemberCountData.fromJson(Map<String, dynamic> json) =
      _$GroupWithMemberCountDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'member_count')
  int get memberCount;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of GroupWithMemberCountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupWithMemberCountDataImplCopyWith<_$GroupWithMemberCountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
