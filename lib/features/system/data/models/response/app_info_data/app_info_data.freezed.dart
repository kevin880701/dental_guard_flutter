// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppInfoData _$AppInfoDataFromJson(Map<String, dynamic> json) {
  return _AppInfoData.fromJson(json);
}

/// @nodoc
mixin _$AppInfoData {
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
  @JsonKey(name: 'maintenance')
  MaintenanceData get maintenance => throw _privateConstructorUsedError;

  /// Serializes this AppInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppInfoDataCopyWith<AppInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoDataCopyWith<$Res> {
  factory $AppInfoDataCopyWith(
          AppInfoData value, $Res Function(AppInfoData) then) =
      _$AppInfoDataCopyWithImpl<$Res, AppInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'app_version') String appVersion,
      @JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'release_notes') String? releaseNotes,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'is_current') bool isCurrent,
      @JsonKey(name: 'maintenance') MaintenanceData maintenance});

  $MaintenanceDataCopyWith<$Res> get maintenance;
}

/// @nodoc
class _$AppInfoDataCopyWithImpl<$Res, $Val extends AppInfoData>
    implements $AppInfoDataCopyWith<$Res> {
  _$AppInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? packageName = null,
    Object? platform = null,
    Object? releaseNotes = freezed,
    Object? releaseDate = freezed,
    Object? isCurrent = null,
    Object? maintenance = null,
  }) {
    return _then(_value.copyWith(
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
      maintenance: null == maintenance
          ? _value.maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as MaintenanceData,
    ) as $Val);
  }

  /// Create a copy of AppInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaintenanceDataCopyWith<$Res> get maintenance {
    return $MaintenanceDataCopyWith<$Res>(_value.maintenance, (value) {
      return _then(_value.copyWith(maintenance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppInfoDataImplCopyWith<$Res>
    implements $AppInfoDataCopyWith<$Res> {
  factory _$$AppInfoDataImplCopyWith(
          _$AppInfoDataImpl value, $Res Function(_$AppInfoDataImpl) then) =
      __$$AppInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'app_version') String appVersion,
      @JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'release_notes') String? releaseNotes,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'is_current') bool isCurrent,
      @JsonKey(name: 'maintenance') MaintenanceData maintenance});

  @override
  $MaintenanceDataCopyWith<$Res> get maintenance;
}

/// @nodoc
class __$$AppInfoDataImplCopyWithImpl<$Res>
    extends _$AppInfoDataCopyWithImpl<$Res, _$AppInfoDataImpl>
    implements _$$AppInfoDataImplCopyWith<$Res> {
  __$$AppInfoDataImplCopyWithImpl(
      _$AppInfoDataImpl _value, $Res Function(_$AppInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? packageName = null,
    Object? platform = null,
    Object? releaseNotes = freezed,
    Object? releaseDate = freezed,
    Object? isCurrent = null,
    Object? maintenance = null,
  }) {
    return _then(_$AppInfoDataImpl(
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
      maintenance: null == maintenance
          ? _value.maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as MaintenanceData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppInfoDataImpl implements _AppInfoData {
  const _$AppInfoDataImpl(
      {@JsonKey(name: 'app_version') required this.appVersion,
      @JsonKey(name: 'package_name') required this.packageName,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'release_notes') this.releaseNotes,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'is_current') required this.isCurrent,
      @JsonKey(name: 'maintenance') required this.maintenance});

  factory _$AppInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppInfoDataImplFromJson(json);

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
  @JsonKey(name: 'maintenance')
  final MaintenanceData maintenance;

  @override
  String toString() {
    return 'AppInfoData(appVersion: $appVersion, packageName: $packageName, platform: $platform, releaseNotes: $releaseNotes, releaseDate: $releaseDate, isCurrent: $isCurrent, maintenance: $maintenance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoDataImpl &&
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
            (identical(other.maintenance, maintenance) ||
                other.maintenance == maintenance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appVersion, packageName,
      platform, releaseNotes, releaseDate, isCurrent, maintenance);

  /// Create a copy of AppInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoDataImplCopyWith<_$AppInfoDataImpl> get copyWith =>
      __$$AppInfoDataImplCopyWithImpl<_$AppInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppInfoDataImplToJson(
      this,
    );
  }
}

abstract class _AppInfoData implements AppInfoData {
  const factory _AppInfoData(
      {@JsonKey(name: 'app_version') required final String appVersion,
      @JsonKey(name: 'package_name') required final String packageName,
      @JsonKey(name: 'platform') required final String platform,
      @JsonKey(name: 'release_notes') final String? releaseNotes,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'is_current') required final bool isCurrent,
      @JsonKey(name: 'maintenance')
      required final MaintenanceData maintenance}) = _$AppInfoDataImpl;

  factory _AppInfoData.fromJson(Map<String, dynamic> json) =
      _$AppInfoDataImpl.fromJson;

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
  @JsonKey(name: 'maintenance')
  MaintenanceData get maintenance;

  /// Create a copy of AppInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppInfoDataImplCopyWith<_$AppInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MaintenanceData _$MaintenanceDataFromJson(Map<String, dynamic> json) {
  return _MaintenanceData.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceData {
  @JsonKey(name: 'is_maintenance')
  bool get isMaintenance => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'announcement')
  String? get announcement => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceDataCopyWith<MaintenanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceDataCopyWith<$Res> {
  factory $MaintenanceDataCopyWith(
          MaintenanceData value, $Res Function(MaintenanceData) then) =
      _$MaintenanceDataCopyWithImpl<$Res, MaintenanceData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_maintenance') bool isMaintenance,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'announcement') String? announcement});
}

/// @nodoc
class _$MaintenanceDataCopyWithImpl<$Res, $Val extends MaintenanceData>
    implements $MaintenanceDataCopyWith<$Res> {
  _$MaintenanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMaintenance = null,
    Object? platform = null,
    Object? announcement = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceDataImplCopyWith<$Res>
    implements $MaintenanceDataCopyWith<$Res> {
  factory _$$MaintenanceDataImplCopyWith(_$MaintenanceDataImpl value,
          $Res Function(_$MaintenanceDataImpl) then) =
      __$$MaintenanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_maintenance') bool isMaintenance,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'announcement') String? announcement});
}

/// @nodoc
class __$$MaintenanceDataImplCopyWithImpl<$Res>
    extends _$MaintenanceDataCopyWithImpl<$Res, _$MaintenanceDataImpl>
    implements _$$MaintenanceDataImplCopyWith<$Res> {
  __$$MaintenanceDataImplCopyWithImpl(
      _$MaintenanceDataImpl _value, $Res Function(_$MaintenanceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMaintenance = null,
    Object? platform = null,
    Object? announcement = freezed,
  }) {
    return _then(_$MaintenanceDataImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceDataImpl implements _MaintenanceData {
  const _$MaintenanceDataImpl(
      {@JsonKey(name: 'is_maintenance') required this.isMaintenance,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'announcement') this.announcement});

  factory _$MaintenanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceDataImplFromJson(json);

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
  String toString() {
    return 'MaintenanceData(isMaintenance: $isMaintenance, platform: $platform, announcement: $announcement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceDataImpl &&
            (identical(other.isMaintenance, isMaintenance) ||
                other.isMaintenance == isMaintenance) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isMaintenance, platform, announcement);

  /// Create a copy of MaintenanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceDataImplCopyWith<_$MaintenanceDataImpl> get copyWith =>
      __$$MaintenanceDataImplCopyWithImpl<_$MaintenanceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceDataImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceData implements MaintenanceData {
  const factory _MaintenanceData(
          {@JsonKey(name: 'is_maintenance') required final bool isMaintenance,
          @JsonKey(name: 'platform') required final String platform,
          @JsonKey(name: 'announcement') final String? announcement}) =
      _$MaintenanceDataImpl;

  factory _MaintenanceData.fromJson(Map<String, dynamic> json) =
      _$MaintenanceDataImpl.fromJson;

  @override
  @JsonKey(name: 'is_maintenance')
  bool get isMaintenance;
  @override
  @JsonKey(name: 'platform')
  String get platform;
  @override
  @JsonKey(name: 'announcement')
  String? get announcement;

  /// Create a copy of MaintenanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceDataImplCopyWith<_$MaintenanceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
