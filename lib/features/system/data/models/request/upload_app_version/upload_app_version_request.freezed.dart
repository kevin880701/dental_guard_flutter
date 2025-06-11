// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_app_version_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadAppVersionRequest _$UploadAppVersionRequestFromJson(
    Map<String, dynamic> json) {
  return _UploadAppVersionRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadAppVersionRequest {
  @JsonKey(name: 'package_name')
  String get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_notes')
  String? get releaseNotes => throw _privateConstructorUsedError;

  /// Serializes this UploadAppVersionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadAppVersionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadAppVersionRequestCopyWith<UploadAppVersionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAppVersionRequestCopyWith<$Res> {
  factory $UploadAppVersionRequestCopyWith(UploadAppVersionRequest value,
          $Res Function(UploadAppVersionRequest) then) =
      _$UploadAppVersionRequestCopyWithImpl<$Res, UploadAppVersionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'app_version') String appVersion,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'release_notes') String? releaseNotes});
}

/// @nodoc
class _$UploadAppVersionRequestCopyWithImpl<$Res,
        $Val extends UploadAppVersionRequest>
    implements $UploadAppVersionRequestCopyWith<$Res> {
  _$UploadAppVersionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadAppVersionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? appVersion = null,
    Object? platform = null,
    Object? releaseDate = null,
    Object? releaseNotes = freezed,
  }) {
    return _then(_value.copyWith(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseNotes: freezed == releaseNotes
          ? _value.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadAppVersionRequestImplCopyWith<$Res>
    implements $UploadAppVersionRequestCopyWith<$Res> {
  factory _$$UploadAppVersionRequestImplCopyWith(
          _$UploadAppVersionRequestImpl value,
          $Res Function(_$UploadAppVersionRequestImpl) then) =
      __$$UploadAppVersionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'app_version') String appVersion,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'release_notes') String? releaseNotes});
}

/// @nodoc
class __$$UploadAppVersionRequestImplCopyWithImpl<$Res>
    extends _$UploadAppVersionRequestCopyWithImpl<$Res,
        _$UploadAppVersionRequestImpl>
    implements _$$UploadAppVersionRequestImplCopyWith<$Res> {
  __$$UploadAppVersionRequestImplCopyWithImpl(
      _$UploadAppVersionRequestImpl _value,
      $Res Function(_$UploadAppVersionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadAppVersionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? appVersion = null,
    Object? platform = null,
    Object? releaseDate = null,
    Object? releaseNotes = freezed,
  }) {
    return _then(_$UploadAppVersionRequestImpl(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseNotes: freezed == releaseNotes
          ? _value.releaseNotes
          : releaseNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadAppVersionRequestImpl implements _UploadAppVersionRequest {
  const _$UploadAppVersionRequestImpl(
      {@JsonKey(name: 'package_name') required this.packageName,
      @JsonKey(name: 'app_version') required this.appVersion,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'release_notes') this.releaseNotes});

  factory _$UploadAppVersionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAppVersionRequestImplFromJson(json);

  @override
  @JsonKey(name: 'package_name')
  final String packageName;
  @override
  @JsonKey(name: 'app_version')
  final String appVersion;
  @override
  @JsonKey(name: 'platform')
  final String platform;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'release_notes')
  final String? releaseNotes;

  @override
  String toString() {
    return 'UploadAppVersionRequest(packageName: $packageName, appVersion: $appVersion, platform: $platform, releaseDate: $releaseDate, releaseNotes: $releaseNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAppVersionRequestImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseNotes, releaseNotes) ||
                other.releaseNotes == releaseNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, packageName, appVersion,
      platform, releaseDate, releaseNotes);

  /// Create a copy of UploadAppVersionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAppVersionRequestImplCopyWith<_$UploadAppVersionRequestImpl>
      get copyWith => __$$UploadAppVersionRequestImplCopyWithImpl<
          _$UploadAppVersionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAppVersionRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadAppVersionRequest implements UploadAppVersionRequest {
  const factory _UploadAppVersionRequest(
          {@JsonKey(name: 'package_name') required final String packageName,
          @JsonKey(name: 'app_version') required final String appVersion,
          @JsonKey(name: 'platform') required final String platform,
          @JsonKey(name: 'release_date') required final String releaseDate,
          @JsonKey(name: 'release_notes') final String? releaseNotes}) =
      _$UploadAppVersionRequestImpl;

  factory _UploadAppVersionRequest.fromJson(Map<String, dynamic> json) =
      _$UploadAppVersionRequestImpl.fromJson;

  @override
  @JsonKey(name: 'package_name')
  String get packageName;
  @override
  @JsonKey(name: 'app_version')
  String get appVersion;
  @override
  @JsonKey(name: 'platform')
  String get platform;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'release_notes')
  String? get releaseNotes;

  /// Create a copy of UploadAppVersionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadAppVersionRequestImplCopyWith<_$UploadAppVersionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
