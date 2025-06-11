// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SystemAppVersion _$SystemAppVersionFromJson(Map<String, dynamic> json) {
  return _SystemAppVersion.fromJson(json);
}

/// @nodoc
mixin _$SystemAppVersion {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_name')
  String get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_notes')
  String? get releaseNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_current')
  bool get isCurrent => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SystemAppVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemAppVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemAppVersionCopyWith<SystemAppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemAppVersionCopyWith<$Res> {
  factory $SystemAppVersionCopyWith(
          SystemAppVersion value, $Res Function(SystemAppVersion) then) =
      _$SystemAppVersionCopyWithImpl<$Res, SystemAppVersion>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'app_version') String appVersion,
      @JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'release_notes') String? releaseNotes,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'is_current') bool isCurrent,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$SystemAppVersionCopyWithImpl<$Res, $Val extends SystemAppVersion>
    implements $SystemAppVersionCopyWith<$Res> {
  _$SystemAppVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemAppVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appVersion = null,
    Object? packageName = null,
    Object? platform = null,
    Object? releaseNotes = freezed,
    Object? releaseDate = freezed,
    Object? isCurrent = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      releaseNotes: freezed == releaseNotes
          ? _value.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$SystemAppVersionImplCopyWith<$Res>
    implements $SystemAppVersionCopyWith<$Res> {
  factory _$$SystemAppVersionImplCopyWith(_$SystemAppVersionImpl value,
          $Res Function(_$SystemAppVersionImpl) then) =
      __$$SystemAppVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'app_version') String appVersion,
      @JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'release_notes') String? releaseNotes,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'is_current') bool isCurrent,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$SystemAppVersionImplCopyWithImpl<$Res>
    extends _$SystemAppVersionCopyWithImpl<$Res, _$SystemAppVersionImpl>
    implements _$$SystemAppVersionImplCopyWith<$Res> {
  __$$SystemAppVersionImplCopyWithImpl(_$SystemAppVersionImpl _value,
      $Res Function(_$SystemAppVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SystemAppVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appVersion = null,
    Object? packageName = null,
    Object? platform = null,
    Object? releaseNotes = freezed,
    Object? releaseDate = freezed,
    Object? isCurrent = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SystemAppVersionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      releaseNotes: freezed == releaseNotes
          ? _value.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$SystemAppVersionImpl implements _SystemAppVersion {
  const _$SystemAppVersionImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'app_version') required this.appVersion,
      @JsonKey(name: 'package_name') required this.packageName,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'release_notes') this.releaseNotes,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'is_current') required this.isCurrent,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SystemAppVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemAppVersionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'app_version')
  final String appVersion;
  @override
  @JsonKey(name: 'package_name')
  final String packageName;
  @override
  @JsonKey(name: 'platform')
  final String platform;
  @override
  @JsonKey(name: 'release_notes')
  final String? releaseNotes;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'is_current')
  final bool isCurrent;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'SystemAppVersion(id: $id, appVersion: $appVersion, packageName: $packageName, platform: $platform, releaseNotes: $releaseNotes, releaseDate: $releaseDate, isCurrent: $isCurrent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemAppVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.releaseNotes, releaseNotes) ||
                other.releaseNotes == releaseNotes) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, appVersion, packageName,
      platform, releaseNotes, releaseDate, isCurrent, createdAt, updatedAt);

  /// Create a copy of SystemAppVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemAppVersionImplCopyWith<_$SystemAppVersionImpl> get copyWith =>
      __$$SystemAppVersionImplCopyWithImpl<_$SystemAppVersionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemAppVersionImplToJson(
      this,
    );
  }
}

abstract class _SystemAppVersion implements SystemAppVersion {
  const factory _SystemAppVersion(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'app_version') required final String appVersion,
          @JsonKey(name: 'package_name') required final String packageName,
          @JsonKey(name: 'platform') required final String platform,
          @JsonKey(name: 'release_notes') final String? releaseNotes,
          @JsonKey(name: 'release_date') final String? releaseDate,
          @JsonKey(name: 'is_current') required final bool isCurrent,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$SystemAppVersionImpl;

  factory _SystemAppVersion.fromJson(Map<String, dynamic> json) =
      _$SystemAppVersionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'app_version')
  String get appVersion;
  @override
  @JsonKey(name: 'package_name')
  String get packageName;
  @override
  @JsonKey(name: 'platform')
  String get platform;
  @override
  @JsonKey(name: 'release_notes')
  String? get releaseNotes;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'is_current')
  bool get isCurrent;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of SystemAppVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemAppVersionImplCopyWith<_$SystemAppVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
