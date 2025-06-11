// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_system_maintenance_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSystemMaintenanceRequest _$GetSystemMaintenanceRequestFromJson(
    Map<String, dynamic> json) {
  return _GetSystemMaintenanceRequest.fromJson(json);
}

/// @nodoc
mixin _$GetSystemMaintenanceRequest {
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;

  /// Serializes this GetSystemMaintenanceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetSystemMaintenanceRequestCopyWith<GetSystemMaintenanceRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSystemMaintenanceRequestCopyWith<$Res> {
  factory $GetSystemMaintenanceRequestCopyWith(
          GetSystemMaintenanceRequest value,
          $Res Function(GetSystemMaintenanceRequest) then) =
      _$GetSystemMaintenanceRequestCopyWithImpl<$Res,
          GetSystemMaintenanceRequest>;
  @useResult
  $Res call({@JsonKey(name: 'platform') String platform});
}

/// @nodoc
class _$GetSystemMaintenanceRequestCopyWithImpl<$Res,
        $Val extends GetSystemMaintenanceRequest>
    implements $GetSystemMaintenanceRequestCopyWith<$Res> {
  _$GetSystemMaintenanceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSystemMaintenanceRequestImplCopyWith<$Res>
    implements $GetSystemMaintenanceRequestCopyWith<$Res> {
  factory _$$GetSystemMaintenanceRequestImplCopyWith(
          _$GetSystemMaintenanceRequestImpl value,
          $Res Function(_$GetSystemMaintenanceRequestImpl) then) =
      __$$GetSystemMaintenanceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'platform') String platform});
}

/// @nodoc
class __$$GetSystemMaintenanceRequestImplCopyWithImpl<$Res>
    extends _$GetSystemMaintenanceRequestCopyWithImpl<$Res,
        _$GetSystemMaintenanceRequestImpl>
    implements _$$GetSystemMaintenanceRequestImplCopyWith<$Res> {
  __$$GetSystemMaintenanceRequestImplCopyWithImpl(
      _$GetSystemMaintenanceRequestImpl _value,
      $Res Function(_$GetSystemMaintenanceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
  }) {
    return _then(_$GetSystemMaintenanceRequestImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSystemMaintenanceRequestImpl
    implements _GetSystemMaintenanceRequest {
  const _$GetSystemMaintenanceRequestImpl(
      {@JsonKey(name: 'platform') required this.platform});

  factory _$GetSystemMaintenanceRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetSystemMaintenanceRequestImplFromJson(json);

  @override
  @JsonKey(name: 'platform')
  final String platform;

  @override
  String toString() {
    return 'GetSystemMaintenanceRequest(platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSystemMaintenanceRequestImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, platform);

  /// Create a copy of GetSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSystemMaintenanceRequestImplCopyWith<_$GetSystemMaintenanceRequestImpl>
      get copyWith => __$$GetSystemMaintenanceRequestImplCopyWithImpl<
          _$GetSystemMaintenanceRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSystemMaintenanceRequestImplToJson(
      this,
    );
  }
}

abstract class _GetSystemMaintenanceRequest
    implements GetSystemMaintenanceRequest {
  const factory _GetSystemMaintenanceRequest(
          {@JsonKey(name: 'platform') required final String platform}) =
      _$GetSystemMaintenanceRequestImpl;

  factory _GetSystemMaintenanceRequest.fromJson(Map<String, dynamic> json) =
      _$GetSystemMaintenanceRequestImpl.fromJson;

  @override
  @JsonKey(name: 'platform')
  String get platform;

  /// Create a copy of GetSystemMaintenanceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSystemMaintenanceRequestImplCopyWith<_$GetSystemMaintenanceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
