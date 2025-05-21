// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_verification_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EnterVerificationCodeRequest _$EnterVerificationCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _EnterVerificationCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$EnterVerificationCodeRequest {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_code')
  String get verificationCode => throw _privateConstructorUsedError;

  /// Serializes this EnterVerificationCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnterVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnterVerificationCodeRequestCopyWith<EnterVerificationCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterVerificationCodeRequestCopyWith<$Res> {
  factory $EnterVerificationCodeRequestCopyWith(
          EnterVerificationCodeRequest value,
          $Res Function(EnterVerificationCodeRequest) then) =
      _$EnterVerificationCodeRequestCopyWithImpl<$Res,
          EnterVerificationCodeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'verification_code') String verificationCode});
}

/// @nodoc
class _$EnterVerificationCodeRequestCopyWithImpl<$Res,
        $Val extends EnterVerificationCodeRequest>
    implements $EnterVerificationCodeRequestCopyWith<$Res> {
  _$EnterVerificationCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnterVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? verificationCode = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnterVerificationCodeRequestImplCopyWith<$Res>
    implements $EnterVerificationCodeRequestCopyWith<$Res> {
  factory _$$EnterVerificationCodeRequestImplCopyWith(
          _$EnterVerificationCodeRequestImpl value,
          $Res Function(_$EnterVerificationCodeRequestImpl) then) =
      __$$EnterVerificationCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'verification_code') String verificationCode});
}

/// @nodoc
class __$$EnterVerificationCodeRequestImplCopyWithImpl<$Res>
    extends _$EnterVerificationCodeRequestCopyWithImpl<$Res,
        _$EnterVerificationCodeRequestImpl>
    implements _$$EnterVerificationCodeRequestImplCopyWith<$Res> {
  __$$EnterVerificationCodeRequestImplCopyWithImpl(
      _$EnterVerificationCodeRequestImpl _value,
      $Res Function(_$EnterVerificationCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnterVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? verificationCode = null,
  }) {
    return _then(_$EnterVerificationCodeRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnterVerificationCodeRequestImpl
    implements _EnterVerificationCodeRequest {
  const _$EnterVerificationCodeRequestImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'verification_code') required this.verificationCode});

  factory _$EnterVerificationCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EnterVerificationCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'verification_code')
  final String verificationCode;

  @override
  String toString() {
    return 'EnterVerificationCodeRequest(email: $email, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterVerificationCodeRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, verificationCode);

  /// Create a copy of EnterVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterVerificationCodeRequestImplCopyWith<
          _$EnterVerificationCodeRequestImpl>
      get copyWith => __$$EnterVerificationCodeRequestImplCopyWithImpl<
          _$EnterVerificationCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnterVerificationCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _EnterVerificationCodeRequest
    implements EnterVerificationCodeRequest {
  const factory _EnterVerificationCodeRequest(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'verification_code')
          required final String verificationCode}) =
      _$EnterVerificationCodeRequestImpl;

  factory _EnterVerificationCodeRequest.fromJson(Map<String, dynamic> json) =
      _$EnterVerificationCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'verification_code')
  String get verificationCode;

  /// Create a copy of EnterVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterVerificationCodeRequestImplCopyWith<
          _$EnterVerificationCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
