// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetPasswordRequest _$SetPasswordRequestFromJson(Map<String, dynamic> json) {
  return _SetPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$SetPasswordRequest {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SetPasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetPasswordRequestCopyWith<SetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPasswordRequestCopyWith<$Res> {
  factory $SetPasswordRequestCopyWith(
          SetPasswordRequest value, $Res Function(SetPasswordRequest) then) =
      _$SetPasswordRequestCopyWithImpl<$Res, SetPasswordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$SetPasswordRequestCopyWithImpl<$Res, $Val extends SetPasswordRequest>
    implements $SetPasswordRequestCopyWith<$Res> {
  _$SetPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetPasswordRequestImplCopyWith<$Res>
    implements $SetPasswordRequestCopyWith<$Res> {
  factory _$$SetPasswordRequestImplCopyWith(_$SetPasswordRequestImpl value,
          $Res Function(_$SetPasswordRequestImpl) then) =
      __$$SetPasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$SetPasswordRequestImplCopyWithImpl<$Res>
    extends _$SetPasswordRequestCopyWithImpl<$Res, _$SetPasswordRequestImpl>
    implements _$$SetPasswordRequestImplCopyWith<$Res> {
  __$$SetPasswordRequestImplCopyWithImpl(_$SetPasswordRequestImpl _value,
      $Res Function(_$SetPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SetPasswordRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$SetPasswordRequestImpl implements _SetPasswordRequest {
  const _$SetPasswordRequestImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password});

  factory _$SetPasswordRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'SetPasswordRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPasswordRequestImplCopyWith<_$SetPasswordRequestImpl> get copyWith =>
      __$$SetPasswordRequestImplCopyWithImpl<_$SetPasswordRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _SetPasswordRequest implements SetPasswordRequest {
  const factory _SetPasswordRequest(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password') required final String password}) =
      _$SetPasswordRequestImpl;

  factory _SetPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$SetPasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of SetPasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPasswordRequestImplCopyWith<_$SetPasswordRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
