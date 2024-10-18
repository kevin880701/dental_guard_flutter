// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LoginRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequestBody _$LoginRequestBodyFromJson(Map<String, dynamic> json) {
  return _LoginRequestBody.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestBody {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestBodyCopyWith<LoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestBodyCopyWith<$Res> {
  factory $LoginRequestBodyCopyWith(
          LoginRequestBody value, $Res Function(LoginRequestBody) then) =
      _$LoginRequestBodyCopyWithImpl<$Res, LoginRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$LoginRequestBodyCopyWithImpl<$Res, $Val extends LoginRequestBody>
    implements $LoginRequestBodyCopyWith<$Res> {
  _$LoginRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestBodyImplCopyWith<$Res>
    implements $LoginRequestBodyCopyWith<$Res> {
  factory _$$LoginRequestBodyImplCopyWith(_$LoginRequestBodyImpl value,
          $Res Function(_$LoginRequestBodyImpl) then) =
      __$$LoginRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$LoginRequestBodyImplCopyWithImpl<$Res>
    extends _$LoginRequestBodyCopyWithImpl<$Res, _$LoginRequestBodyImpl>
    implements _$$LoginRequestBodyImplCopyWith<$Res> {
  __$$LoginRequestBodyImplCopyWithImpl(_$LoginRequestBodyImpl _value,
      $Res Function(_$LoginRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestBodyImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestBodyImpl implements _LoginRequestBody {
  const _$LoginRequestBodyImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password});

  factory _$LoginRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'LoginRequestBody(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestBodyImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of LoginRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestBodyImplCopyWith<_$LoginRequestBodyImpl> get copyWith =>
      __$$LoginRequestBodyImplCopyWithImpl<_$LoginRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _LoginRequestBody implements LoginRequestBody {
  const factory _LoginRequestBody(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$LoginRequestBodyImpl;

  factory _LoginRequestBody.fromJson(Map<String, dynamic> json) =
      _$LoginRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of LoginRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestBodyImplCopyWith<_$LoginRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
