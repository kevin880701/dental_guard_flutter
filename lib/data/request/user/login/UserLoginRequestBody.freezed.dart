// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserLoginRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLoginRequestBody _$UserLoginRequestBodyFromJson(Map<String, dynamic> json) {
  return _UserLoginRequestBody.fromJson(json);
}

/// @nodoc
mixin _$UserLoginRequestBody {
  String get account => throw _privateConstructorUsedError;
  String get psw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginRequestBodyCopyWith<UserLoginRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginRequestBodyCopyWith<$Res> {
  factory $UserLoginRequestBodyCopyWith(UserLoginRequestBody value,
          $Res Function(UserLoginRequestBody) then) =
      _$UserLoginRequestBodyCopyWithImpl<$Res, UserLoginRequestBody>;
  @useResult
  $Res call({String account, String psw});
}

/// @nodoc
class _$UserLoginRequestBodyCopyWithImpl<$Res,
        $Val extends UserLoginRequestBody>
    implements $UserLoginRequestBodyCopyWith<$Res> {
  _$UserLoginRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? psw = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      psw: null == psw
          ? _value.psw
          : psw // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginRequestBodyImplCopyWith<$Res>
    implements $UserLoginRequestBodyCopyWith<$Res> {
  factory _$$UserLoginRequestBodyImplCopyWith(_$UserLoginRequestBodyImpl value,
          $Res Function(_$UserLoginRequestBodyImpl) then) =
      __$$UserLoginRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String account, String psw});
}

/// @nodoc
class __$$UserLoginRequestBodyImplCopyWithImpl<$Res>
    extends _$UserLoginRequestBodyCopyWithImpl<$Res, _$UserLoginRequestBodyImpl>
    implements _$$UserLoginRequestBodyImplCopyWith<$Res> {
  __$$UserLoginRequestBodyImplCopyWithImpl(_$UserLoginRequestBodyImpl _value,
      $Res Function(_$UserLoginRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? psw = null,
  }) {
    return _then(_$UserLoginRequestBodyImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      psw: null == psw
          ? _value.psw
          : psw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginRequestBodyImpl implements _UserLoginRequestBody {
  const _$UserLoginRequestBodyImpl({required this.account, required this.psw});

  factory _$UserLoginRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginRequestBodyImplFromJson(json);

  @override
  final String account;
  @override
  final String psw;

  @override
  String toString() {
    return 'UserLoginRequestBody(account: $account, psw: $psw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginRequestBodyImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.psw, psw) || other.psw == psw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, psw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginRequestBodyImplCopyWith<_$UserLoginRequestBodyImpl>
      get copyWith =>
          __$$UserLoginRequestBodyImplCopyWithImpl<_$UserLoginRequestBodyImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _UserLoginRequestBody implements UserLoginRequestBody {
  const factory _UserLoginRequestBody(
      {required final String account,
      required final String psw}) = _$UserLoginRequestBodyImpl;

  factory _UserLoginRequestBody.fromJson(Map<String, dynamic> json) =
      _$UserLoginRequestBodyImpl.fromJson;

  @override
  String get account;
  @override
  String get psw;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginRequestBodyImplCopyWith<_$UserLoginRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
