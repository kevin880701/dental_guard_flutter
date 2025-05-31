// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_oauth_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseOAuthLoginRequest _$FirebaseOAuthLoginRequestFromJson(
    Map<String, dynamic> json) {
  return _FirebaseOAuthLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$FirebaseOAuthLoginRequest {
  @JsonKey(name: 'login_type')
  int get loginType => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FirebaseOAuthLoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseOAuthLoginRequestCopyWith<FirebaseOAuthLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseOAuthLoginRequestCopyWith<$Res> {
  factory $FirebaseOAuthLoginRequestCopyWith(FirebaseOAuthLoginRequest value,
          $Res Function(FirebaseOAuthLoginRequest) then) =
      _$FirebaseOAuthLoginRequestCopyWithImpl<$Res, FirebaseOAuthLoginRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login_type') int loginType,
      @JsonKey(name: 'id_token') String idToken,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$FirebaseOAuthLoginRequestCopyWithImpl<$Res,
        $Val extends FirebaseOAuthLoginRequest>
    implements $FirebaseOAuthLoginRequestCopyWith<$Res> {
  _$FirebaseOAuthLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginType = null,
    Object? idToken = null,
    Object? email = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseOAuthLoginRequestImplCopyWith<$Res>
    implements $FirebaseOAuthLoginRequestCopyWith<$Res> {
  factory _$$FirebaseOAuthLoginRequestImplCopyWith(
          _$FirebaseOAuthLoginRequestImpl value,
          $Res Function(_$FirebaseOAuthLoginRequestImpl) then) =
      __$$FirebaseOAuthLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login_type') int loginType,
      @JsonKey(name: 'id_token') String idToken,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$FirebaseOAuthLoginRequestImplCopyWithImpl<$Res>
    extends _$FirebaseOAuthLoginRequestCopyWithImpl<$Res,
        _$FirebaseOAuthLoginRequestImpl>
    implements _$$FirebaseOAuthLoginRequestImplCopyWith<$Res> {
  __$$FirebaseOAuthLoginRequestImplCopyWithImpl(
      _$FirebaseOAuthLoginRequestImpl _value,
      $Res Function(_$FirebaseOAuthLoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginType = null,
    Object? idToken = null,
    Object? email = null,
    Object? name = null,
  }) {
    return _then(_$FirebaseOAuthLoginRequestImpl(
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseOAuthLoginRequestImpl implements _FirebaseOAuthLoginRequest {
  const _$FirebaseOAuthLoginRequestImpl(
      {@JsonKey(name: 'login_type') required this.loginType,
      @JsonKey(name: 'id_token') required this.idToken,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'name') required this.name});

  factory _$FirebaseOAuthLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseOAuthLoginRequestImplFromJson(json);

  @override
  @JsonKey(name: 'login_type')
  final int loginType;
  @override
  @JsonKey(name: 'id_token')
  final String idToken;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'FirebaseOAuthLoginRequest(loginType: $loginType, idToken: $idToken, email: $email, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseOAuthLoginRequestImpl &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loginType, idToken, email, name);

  /// Create a copy of FirebaseOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseOAuthLoginRequestImplCopyWith<_$FirebaseOAuthLoginRequestImpl>
      get copyWith => __$$FirebaseOAuthLoginRequestImplCopyWithImpl<
          _$FirebaseOAuthLoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseOAuthLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _FirebaseOAuthLoginRequest implements FirebaseOAuthLoginRequest {
  const factory _FirebaseOAuthLoginRequest(
          {@JsonKey(name: 'login_type') required final int loginType,
          @JsonKey(name: 'id_token') required final String idToken,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'name') required final String name}) =
      _$FirebaseOAuthLoginRequestImpl;

  factory _FirebaseOAuthLoginRequest.fromJson(Map<String, dynamic> json) =
      _$FirebaseOAuthLoginRequestImpl.fromJson;

  @override
  @JsonKey(name: 'login_type')
  int get loginType;
  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of FirebaseOAuthLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseOAuthLoginRequestImplCopyWith<_$FirebaseOAuthLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
