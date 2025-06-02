// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_oauth_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LineOAuthLoginRequest _$LineOAuthLoginRequestFromJson(
    Map<String, dynamic> json) {
  return _LineOAuthLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LineOAuthLoginRequest {
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;

  /// Serializes this LineOAuthLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LineOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LineOAuthLoginRequestCopyWith<LineOAuthLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineOAuthLoginRequestCopyWith<$Res> {
  factory $LineOAuthLoginRequestCopyWith(LineOAuthLoginRequest value,
          $Res Function(LineOAuthLoginRequest) then) =
      _$LineOAuthLoginRequestCopyWithImpl<$Res, LineOAuthLoginRequest>;
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class _$LineOAuthLoginRequestCopyWithImpl<$Res,
        $Val extends LineOAuthLoginRequest>
    implements $LineOAuthLoginRequestCopyWith<$Res> {
  _$LineOAuthLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LineOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineOAuthLoginRequestImplCopyWith<$Res>
    implements $LineOAuthLoginRequestCopyWith<$Res> {
  factory _$$LineOAuthLoginRequestImplCopyWith(
          _$LineOAuthLoginRequestImpl value,
          $Res Function(_$LineOAuthLoginRequestImpl) then) =
      __$$LineOAuthLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_token') String idToken});
}

/// @nodoc
class __$$LineOAuthLoginRequestImplCopyWithImpl<$Res>
    extends _$LineOAuthLoginRequestCopyWithImpl<$Res,
        _$LineOAuthLoginRequestImpl>
    implements _$$LineOAuthLoginRequestImplCopyWith<$Res> {
  __$$LineOAuthLoginRequestImplCopyWithImpl(_$LineOAuthLoginRequestImpl _value,
      $Res Function(_$LineOAuthLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LineOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$LineOAuthLoginRequestImpl(
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LineOAuthLoginRequestImpl implements _LineOAuthLoginRequest {
  const _$LineOAuthLoginRequestImpl(
      {@JsonKey(name: 'id_token') required this.idToken});

  factory _$LineOAuthLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineOAuthLoginRequestImplFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String idToken;

  @override
  String toString() {
    return 'LineOAuthLoginRequest(idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineOAuthLoginRequestImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  /// Create a copy of LineOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LineOAuthLoginRequestImplCopyWith<_$LineOAuthLoginRequestImpl>
      get copyWith => __$$LineOAuthLoginRequestImplCopyWithImpl<
          _$LineOAuthLoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LineOAuthLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _LineOAuthLoginRequest implements LineOAuthLoginRequest {
  const factory _LineOAuthLoginRequest(
          {@JsonKey(name: 'id_token') required final String idToken}) =
      _$LineOAuthLoginRequestImpl;

  factory _LineOAuthLoginRequest.fromJson(Map<String, dynamic> json) =
      _$LineOAuthLoginRequestImpl.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get idToken;

  /// Create a copy of LineOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LineOAuthLoginRequestImplCopyWith<_$LineOAuthLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
