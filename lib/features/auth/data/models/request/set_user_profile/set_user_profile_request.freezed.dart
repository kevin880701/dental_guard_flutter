// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_user_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetUserProfileRequest _$SetUserProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _SetUserProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$SetUserProfileRequest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  String? get birthday => throw _privateConstructorUsedError;

  /// Serializes this SetUserProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetUserProfileRequestCopyWith<SetUserProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetUserProfileRequestCopyWith<$Res> {
  factory $SetUserProfileRequestCopyWith(SetUserProfileRequest value,
          $Res Function(SetUserProfileRequest) then) =
      _$SetUserProfileRequestCopyWithImpl<$Res, SetUserProfileRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'birthday') String? birthday});
}

/// @nodoc
class _$SetUserProfileRequestCopyWithImpl<$Res,
        $Val extends SetUserProfileRequest>
    implements $SetUserProfileRequestCopyWith<$Res> {
  _$SetUserProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetUserProfileRequestImplCopyWith<$Res>
    implements $SetUserProfileRequestCopyWith<$Res> {
  factory _$$SetUserProfileRequestImplCopyWith(
          _$SetUserProfileRequestImpl value,
          $Res Function(_$SetUserProfileRequestImpl) then) =
      __$$SetUserProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'birthday') String? birthday});
}

/// @nodoc
class __$$SetUserProfileRequestImplCopyWithImpl<$Res>
    extends _$SetUserProfileRequestCopyWithImpl<$Res,
        _$SetUserProfileRequestImpl>
    implements _$$SetUserProfileRequestImplCopyWith<$Res> {
  __$$SetUserProfileRequestImplCopyWithImpl(_$SetUserProfileRequestImpl _value,
      $Res Function(_$SetUserProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? birthday = freezed,
  }) {
    return _then(_$SetUserProfileRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetUserProfileRequestImpl implements _SetUserProfileRequest {
  const _$SetUserProfileRequestImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'birthday') this.birthday});

  factory _$SetUserProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetUserProfileRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'birthday')
  final String? birthday;

  @override
  String toString() {
    return 'SetUserProfileRequest(name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserProfileRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phone, avatarUrl, birthday);

  /// Create a copy of SetUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserProfileRequestImplCopyWith<_$SetUserProfileRequestImpl>
      get copyWith => __$$SetUserProfileRequestImplCopyWithImpl<
          _$SetUserProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetUserProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _SetUserProfileRequest implements SetUserProfileRequest {
  const factory _SetUserProfileRequest(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'avatar_url') final String? avatarUrl,
          @JsonKey(name: 'birthday') final String? birthday}) =
      _$SetUserProfileRequestImpl;

  factory _SetUserProfileRequest.fromJson(Map<String, dynamic> json) =
      _$SetUserProfileRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'birthday')
  String? get birthday;

  /// Create a copy of SetUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUserProfileRequestImplCopyWith<_$SetUserProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
