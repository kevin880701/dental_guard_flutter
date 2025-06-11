// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_app_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAppInfoRequest _$GetAppInfoRequestFromJson(Map<String, dynamic> json) {
  return _GetAppInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$GetAppInfoRequest {
  @JsonKey(name: 'package_name')
  String get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform')
  String get platform => throw _privateConstructorUsedError;

  /// Serializes this GetAppInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAppInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAppInfoRequestCopyWith<GetAppInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAppInfoRequestCopyWith<$Res> {
  factory $GetAppInfoRequestCopyWith(
          GetAppInfoRequest value, $Res Function(GetAppInfoRequest) then) =
      _$GetAppInfoRequestCopyWithImpl<$Res, GetAppInfoRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'platform') String platform});
}

/// @nodoc
class _$GetAppInfoRequestCopyWithImpl<$Res, $Val extends GetAppInfoRequest>
    implements $GetAppInfoRequestCopyWith<$Res> {
  _$GetAppInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAppInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? platform = null,
  }) {
    return _then(_value.copyWith(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAppInfoRequestImplCopyWith<$Res>
    implements $GetAppInfoRequestCopyWith<$Res> {
  factory _$$GetAppInfoRequestImplCopyWith(_$GetAppInfoRequestImpl value,
          $Res Function(_$GetAppInfoRequestImpl) then) =
      __$$GetAppInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'package_name') String packageName,
      @JsonKey(name: 'platform') String platform});
}

/// @nodoc
class __$$GetAppInfoRequestImplCopyWithImpl<$Res>
    extends _$GetAppInfoRequestCopyWithImpl<$Res, _$GetAppInfoRequestImpl>
    implements _$$GetAppInfoRequestImplCopyWith<$Res> {
  __$$GetAppInfoRequestImplCopyWithImpl(_$GetAppInfoRequestImpl _value,
      $Res Function(_$GetAppInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAppInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageName = null,
    Object? platform = null,
  }) {
    return _then(_$GetAppInfoRequestImpl(
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAppInfoRequestImpl implements _GetAppInfoRequest {
  const _$GetAppInfoRequestImpl(
      {@JsonKey(name: 'package_name') required this.packageName,
      @JsonKey(name: 'platform') required this.platform});

  factory _$GetAppInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAppInfoRequestImplFromJson(json);

  @override
  @JsonKey(name: 'package_name')
  final String packageName;
  @override
  @JsonKey(name: 'platform')
  final String platform;

  @override
  String toString() {
    return 'GetAppInfoRequest(packageName: $packageName, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppInfoRequestImpl &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, packageName, platform);

  /// Create a copy of GetAppInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppInfoRequestImplCopyWith<_$GetAppInfoRequestImpl> get copyWith =>
      __$$GetAppInfoRequestImplCopyWithImpl<_$GetAppInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAppInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _GetAppInfoRequest implements GetAppInfoRequest {
  const factory _GetAppInfoRequest(
          {@JsonKey(name: 'package_name') required final String packageName,
          @JsonKey(name: 'platform') required final String platform}) =
      _$GetAppInfoRequestImpl;

  factory _GetAppInfoRequest.fromJson(Map<String, dynamic> json) =
      _$GetAppInfoRequestImpl.fromJson;

  @override
  @JsonKey(name: 'package_name')
  String get packageName;
  @override
  @JsonKey(name: 'platform')
  String get platform;

  /// Create a copy of GetAppInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAppInfoRequestImplCopyWith<_$GetAppInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
