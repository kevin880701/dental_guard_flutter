// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_maintenance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemMaintenance _$SystemMaintenanceFromJson(Map<String, dynamic> json) {
  return _SystemMaintenance.fromJson(json);
}

/// @nodoc
mixin _$SystemMaintenance {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_maintenance')
  bool get isMaintenance => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'announcement')
  String? get announcement => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SystemMaintenance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemMaintenance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemMaintenanceCopyWith<SystemMaintenance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemMaintenanceCopyWith<$Res> {
  factory $SystemMaintenanceCopyWith(
          SystemMaintenance value, $Res Function(SystemMaintenance) then) =
      _$SystemMaintenanceCopyWithImpl<$Res, SystemMaintenance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'is_maintenance') bool isMaintenance,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'announcement') String? announcement,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$SystemMaintenanceCopyWithImpl<$Res, $Val extends SystemMaintenance>
    implements $SystemMaintenanceCopyWith<$Res> {
  _$SystemMaintenanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemMaintenance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isMaintenance = null,
    Object? platform = null,
    Object? announcement = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isMaintenance: null == isMaintenance
          ? _value.isMaintenance
          : isMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      announcement: freezed == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SystemMaintenanceImplCopyWith<$Res>
    implements $SystemMaintenanceCopyWith<$Res> {
  factory _$$SystemMaintenanceImplCopyWith(_$SystemMaintenanceImpl value,
          $Res Function(_$SystemMaintenanceImpl) then) =
      __$$SystemMaintenanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'is_maintenance') bool isMaintenance,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'announcement') String? announcement,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$SystemMaintenanceImplCopyWithImpl<$Res>
    extends _$SystemMaintenanceCopyWithImpl<$Res, _$SystemMaintenanceImpl>
    implements _$$SystemMaintenanceImplCopyWith<$Res> {
  __$$SystemMaintenanceImplCopyWithImpl(_$SystemMaintenanceImpl _value,
      $Res Function(_$SystemMaintenanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemMaintenance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isMaintenance = null,
    Object? platform = null,
    Object? announcement = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SystemMaintenanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isMaintenance: null == isMaintenance
          ? _value.isMaintenance
          : isMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      announcement: freezed == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemMaintenanceImpl implements _SystemMaintenance {
  const _$SystemMaintenanceImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'is_maintenance') required this.isMaintenance,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'announcement') this.announcement,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SystemMaintenanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemMaintenanceImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'is_maintenance')
  final bool isMaintenance;
  @override
  @JsonKey(name: 'platform')
  final String platform;
  @override
  @JsonKey(name: 'announcement')
  final String? announcement;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SystemMaintenance(id: $id, isMaintenance: $isMaintenance, platform: $platform, announcement: $announcement, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemMaintenanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isMaintenance, isMaintenance) ||
                other.isMaintenance == isMaintenance) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, isMaintenance, platform,
      announcement, createdAt, updatedAt);

  /// Create a copy of SystemMaintenance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemMaintenanceImplCopyWith<_$SystemMaintenanceImpl> get copyWith =>
      __$$SystemMaintenanceImplCopyWithImpl<_$SystemMaintenanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemMaintenanceImplToJson(
      this,
    );
  }
}

abstract class _SystemMaintenance implements SystemMaintenance {
  const factory _SystemMaintenance(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'is_maintenance') required final bool isMaintenance,
          @JsonKey(name: 'platform') required final String platform,
          @JsonKey(name: 'announcement') final String? announcement,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$SystemMaintenanceImpl;

  factory _SystemMaintenance.fromJson(Map<String, dynamic> json) =
      _$SystemMaintenanceImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'is_maintenance')
  bool get isMaintenance;
  @override
  @JsonKey(name: 'platform')
  String get platform;
  @override
  @JsonKey(name: 'announcement')
  String? get announcement;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of SystemMaintenance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemMaintenanceImplCopyWith<_$SystemMaintenanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
