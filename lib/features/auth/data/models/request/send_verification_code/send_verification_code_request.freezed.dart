// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_verification_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendVerificationCodeRequest _$SendVerificationCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _SendVerificationCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$SendVerificationCodeRequest {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Serializes this SendVerificationCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendVerificationCodeRequestCopyWith<SendVerificationCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendVerificationCodeRequestCopyWith<$Res> {
  factory $SendVerificationCodeRequestCopyWith(
          SendVerificationCodeRequest value,
          $Res Function(SendVerificationCodeRequest) then) =
      _$SendVerificationCodeRequestCopyWithImpl<$Res,
          SendVerificationCodeRequest>;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$SendVerificationCodeRequestCopyWithImpl<$Res,
        $Val extends SendVerificationCodeRequest>
    implements $SendVerificationCodeRequestCopyWith<$Res> {
  _$SendVerificationCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendVerificationCodeRequestImplCopyWith<$Res>
    implements $SendVerificationCodeRequestCopyWith<$Res> {
  factory _$$SendVerificationCodeRequestImplCopyWith(
          _$SendVerificationCodeRequestImpl value,
          $Res Function(_$SendVerificationCodeRequestImpl) then) =
      __$$SendVerificationCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$SendVerificationCodeRequestImplCopyWithImpl<$Res>
    extends _$SendVerificationCodeRequestCopyWithImpl<$Res,
        _$SendVerificationCodeRequestImpl>
    implements _$$SendVerificationCodeRequestImplCopyWith<$Res> {
  __$$SendVerificationCodeRequestImplCopyWithImpl(
      _$SendVerificationCodeRequestImpl _value,
      $Res Function(_$SendVerificationCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendVerificationCodeRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendVerificationCodeRequestImpl
    implements _SendVerificationCodeRequest {
  const _$SendVerificationCodeRequestImpl(
      {@JsonKey(name: 'email') required this.email});

  factory _$SendVerificationCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendVerificationCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'SendVerificationCodeRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVerificationCodeRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SendVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendVerificationCodeRequestImplCopyWith<_$SendVerificationCodeRequestImpl>
      get copyWith => __$$SendVerificationCodeRequestImplCopyWithImpl<
          _$SendVerificationCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendVerificationCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _SendVerificationCodeRequest
    implements SendVerificationCodeRequest {
  const factory _SendVerificationCodeRequest(
          {@JsonKey(name: 'email') required final String email}) =
      _$SendVerificationCodeRequestImpl;

  factory _SendVerificationCodeRequest.fromJson(Map<String, dynamic> json) =
      _$SendVerificationCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of SendVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendVerificationCodeRequestImplCopyWith<_$SendVerificationCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
