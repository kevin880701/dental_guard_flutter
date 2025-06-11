// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_system_maintenance_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadSystemMaintenanceRequest _$UploadSystemMaintenanceRequestFromJson(
    Map<String, dynamic> json) {
  return _UploadSystemMaintenanceRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadSystemMaintenanceRequest {
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMaintenance')
  bool get isMaintenance => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenanceStart')
  String get maintenanceStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenanceEnd')
  String get maintenanceEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'announcement')
  String? get announcement => throw _privateConstructorUsedError;

  /// Serializes this UploadSystemMaintenanceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadSystemMaintenanceRequestCopyWith<UploadSystemMaintenanceRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadSystemMaintenanceRequestCopyWith<$Res> {
  factory $UploadSystemMaintenanceRequestCopyWith(
          UploadSystemMaintenanceRequest value,
          $Res Function(UploadSystemMaintenanceRequest) then) =
      _$UploadSystemMaintenanceRequestCopyWithImpl<$Res,
          UploadSystemMaintenanceRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'isMaintenance') bool isMaintenance,
      @JsonKey(name: 'maintenanceStart') String maintenanceStart,
      @JsonKey(name: 'maintenanceEnd') String maintenanceEnd,
      @JsonKey(name: 'announcement') String? announcement});
}

/// @nodoc
class _$UploadSystemMaintenanceRequestCopyWithImpl<$Res,
        $Val extends UploadSystemMaintenanceRequest>
    implements $UploadSystemMaintenanceRequestCopyWith<$Res> {
  _$UploadSystemMaintenanceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? isMaintenance = null,
    Object? maintenanceStart = null,
    Object? maintenanceEnd = null,
    Object? announcement = freezed,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      isMaintenance: null == isMaintenance
          ? _value.isMaintenance
          : isMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      maintenanceStart: null == maintenanceStart
          ? _value.maintenanceStart
          : maintenanceStart // ignore: cast_nullable_to_non_nullable
              as String,
      maintenanceEnd: null == maintenanceEnd
          ? _value.maintenanceEnd
          : maintenanceEnd // ignore: cast_nullable_to_non_nullable
              as String,
      announcement: freezed == announcement
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadSystemMaintenanceRequestImplCopyWith<$Res>
    implements $UploadSystemMaintenanceRequestCopyWith<$Res> {
  factory _$$UploadSystemMaintenanceRequestImplCopyWith(
          _$UploadSystemMaintenanceRequestImpl value,
          $Res Function(_$UploadSystemMaintenanceRequestImpl) then) =
      __$$UploadSystemMaintenanceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'isMaintenance') bool isMaintenance,
      @JsonKey(name: 'maintenanceStart') String maintenanceStart,
      @JsonKey(name: 'maintenanceEnd') String maintenanceEnd,
      @JsonKey(name: 'announcement') String? announcement});
}

/// @nodoc
class __$$UploadSystemMaintenanceRequestImplCopyWithImpl<$Res>
    extends _$UploadSystemMaintenanceRequestCopyWithImpl<$Res,
        _$UploadSystemMaintenanceRequestImpl>
    implements _$$UploadSystemMaintenanceRequestImplCopyWith<$Res> {
  __$$UploadSystemMaintenanceRequestImplCopyWithImpl(
      _$UploadSystemMaintenanceRequestImpl _value,
      $Res Function(_$UploadSystemMaintenanceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? isMaintenance = null,
    Object? maintenanceStart = null,
    Object? maintenanceEnd = null,
    Object? announcement = freezed,
  }) {
    return _then(_$UploadSystemMaintenanceRequestImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      isMaintenance: null == isMaintenance
          ? _value.isMaintenance
          : isMaintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      maintenanceStart: null == maintenanceStart
          ? _value.maintenanceStart
          : maintenanceStart // ignore: cast_nullable_to_non_nullable
              as String,
      maintenanceEnd: null == maintenanceEnd
          ? _value.maintenanceEnd
          : maintenanceEnd // ignore: cast_nullable_to_non_nullable
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
class _$UploadSystemMaintenanceRequestImpl
    implements _UploadSystemMaintenanceRequest {
  const _$UploadSystemMaintenanceRequestImpl(
      {@JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'isMaintenance') required this.isMaintenance,
      @JsonKey(name: 'maintenanceStart') required this.maintenanceStart,
      @JsonKey(name: 'maintenanceEnd') required this.maintenanceEnd,
      @JsonKey(name: 'announcement') this.announcement});

  factory _$UploadSystemMaintenanceRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UploadSystemMaintenanceRequestImplFromJson(json);

  @override
  @JsonKey(name: 'platform')
  final String platform;
  @override
  @JsonKey(name: 'isMaintenance')
  final bool isMaintenance;
  @override
  @JsonKey(name: 'maintenanceStart')
  final String maintenanceStart;
  @override
  @JsonKey(name: 'maintenanceEnd')
  final String maintenanceEnd;
  @override
  @JsonKey(name: 'announcement')
  final String? announcement;

  @override
  String toString() {
    return 'UploadSystemMaintenanceRequest(platform: $platform, isMaintenance: $isMaintenance, maintenanceStart: $maintenanceStart, maintenanceEnd: $maintenanceEnd, announcement: $announcement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadSystemMaintenanceRequestImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.isMaintenance, isMaintenance) ||
                other.isMaintenance == isMaintenance) &&
            (identical(other.maintenanceStart, maintenanceStart) ||
                other.maintenanceStart == maintenanceStart) &&
            (identical(other.maintenanceEnd, maintenanceEnd) ||
                other.maintenanceEnd == maintenanceEnd) &&
            (identical(other.announcement, announcement) ||
                other.announcement == announcement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, platform, isMaintenance,
      maintenanceStart, maintenanceEnd, announcement);

  /// Create a copy of UploadSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadSystemMaintenanceRequestImplCopyWith<
          _$UploadSystemMaintenanceRequestImpl>
      get copyWith => __$$UploadSystemMaintenanceRequestImplCopyWithImpl<
          _$UploadSystemMaintenanceRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadSystemMaintenanceRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadSystemMaintenanceRequest
    implements UploadSystemMaintenanceRequest {
  const factory _UploadSystemMaintenanceRequest(
      {@JsonKey(name: 'platform') required final String platform,
      @JsonKey(name: 'isMaintenance') required final bool isMaintenance,
      @JsonKey(name: 'maintenanceStart') required final String maintenanceStart,
      @JsonKey(name: 'maintenanceEnd') required final String maintenanceEnd,
      @JsonKey(name: 'announcement')
      final String? announcement}) = _$UploadSystemMaintenanceRequestImpl;

  factory _UploadSystemMaintenanceRequest.fromJson(Map<String, dynamic> json) =
      _$UploadSystemMaintenanceRequestImpl.fromJson;

  @override
  @JsonKey(name: 'platform')
  String get platform;
  @override
  @JsonKey(name: 'isMaintenance')
  bool get isMaintenance;
  @override
  @JsonKey(name: 'maintenanceStart')
  String get maintenanceStart;
  @override
  @JsonKey(name: 'maintenanceEnd')
  String get maintenanceEnd;
  @override
  @JsonKey(name: 'announcement')
  String? get announcement;

  /// Create a copy of UploadSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadSystemMaintenanceRequestImplCopyWith<
          _$UploadSystemMaintenanceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
