// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshTokenData _$RefreshTokenDataFromJson(Map<String, dynamic> json) {
  return _RefreshTokenData.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenData {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenDataCopyWith<RefreshTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenDataCopyWith<$Res> {
  factory $RefreshTokenDataCopyWith(
          RefreshTokenData value, $Res Function(RefreshTokenData) then) =
      _$RefreshTokenDataCopyWithImpl<$Res, RefreshTokenData>;
  @useResult
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class _$RefreshTokenDataCopyWithImpl<$Res, $Val extends RefreshTokenData>
    implements $RefreshTokenDataCopyWith<$Res> {
  _$RefreshTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenDataImplCopyWith<$Res>
    implements $RefreshTokenDataCopyWith<$Res> {
  factory _$$RefreshTokenDataImplCopyWith(_$RefreshTokenDataImpl value,
          $Res Function(_$RefreshTokenDataImpl) then) =
      __$$RefreshTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class __$$RefreshTokenDataImplCopyWithImpl<$Res>
    extends _$RefreshTokenDataCopyWithImpl<$Res, _$RefreshTokenDataImpl>
    implements _$$RefreshTokenDataImplCopyWith<$Res> {
  __$$RefreshTokenDataImplCopyWithImpl(_$RefreshTokenDataImpl _value,
      $Res Function(_$RefreshTokenDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$RefreshTokenDataImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenDataImpl implements _RefreshTokenData {
  const _$RefreshTokenDataImpl(
      {@JsonKey(name: 'access_token') required this.accessToken});

  factory _$RefreshTokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenDataImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  String toString() {
    return 'RefreshTokenData(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  /// Create a copy of RefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenDataImplCopyWith<_$RefreshTokenDataImpl> get copyWith =>
      __$$RefreshTokenDataImplCopyWithImpl<_$RefreshTokenDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenDataImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenData implements RefreshTokenData {
  const factory _RefreshTokenData(
          {@JsonKey(name: 'access_token') required final String accessToken}) =
      _$RefreshTokenDataImpl;

  factory _RefreshTokenData.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenDataImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;

  /// Create a copy of RefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenDataImplCopyWith<_$RefreshTokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
