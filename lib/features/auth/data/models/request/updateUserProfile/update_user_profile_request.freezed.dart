// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserProfileRequest _$UpdateUserProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProfileRequest {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'gender')
  int? get gender => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserProfileRequestCopyWith<UpdateUserProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProfileRequestCopyWith<$Res> {
  factory $UpdateUserProfileRequestCopyWith(UpdateUserProfileRequest value,
          $Res Function(UpdateUserProfileRequest) then) =
      _$UpdateUserProfileRequestCopyWithImpl<$Res, UpdateUserProfileRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'gender') int? gender});
}

/// @nodoc
class _$UpdateUserProfileRequestCopyWithImpl<$Res,
        $Val extends UpdateUserProfileRequest>
    implements $UpdateUserProfileRequestCopyWith<$Res> {
  _$UpdateUserProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserProfileRequestImplCopyWith<$Res>
    implements $UpdateUserProfileRequestCopyWith<$Res> {
  factory _$$UpdateUserProfileRequestImplCopyWith(
          _$UpdateUserProfileRequestImpl value,
          $Res Function(_$UpdateUserProfileRequestImpl) then) =
      __$$UpdateUserProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'birthday') String? birthday,
      @JsonKey(name: 'gender') int? gender});
}

/// @nodoc
class __$$UpdateUserProfileRequestImplCopyWithImpl<$Res>
    extends _$UpdateUserProfileRequestCopyWithImpl<$Res,
        _$UpdateUserProfileRequestImpl>
    implements _$$UpdateUserProfileRequestImplCopyWith<$Res> {
  __$$UpdateUserProfileRequestImplCopyWithImpl(
      _$UpdateUserProfileRequestImpl _value,
      $Res Function(_$UpdateUserProfileRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$UpdateUserProfileRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserProfileRequestImpl implements _UpdateUserProfileRequest {
  const _$UpdateUserProfileRequestImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'birthday') this.birthday,
      @JsonKey(name: 'gender') this.gender});

  factory _$UpdateUserProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserProfileRequestImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
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
  @JsonKey(name: 'gender')
  final int? gender;

  @override
  String toString() {
    return 'UpdateUserProfileRequest(userId: $userId, name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, birthday: $birthday, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProfileRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, name, email, phone, avatarUrl, birthday, gender);

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProfileRequestImplCopyWith<_$UpdateUserProfileRequestImpl>
      get copyWith => __$$UpdateUserProfileRequestImplCopyWithImpl<
          _$UpdateUserProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserProfileRequest implements UpdateUserProfileRequest {
  const factory _UpdateUserProfileRequest(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'avatar_url') final String? avatarUrl,
          @JsonKey(name: 'birthday') final String? birthday,
          @JsonKey(name: 'gender') final int? gender}) =
      _$UpdateUserProfileRequestImpl;

  factory _UpdateUserProfileRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserProfileRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
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
  @override
  @JsonKey(name: 'gender')
  int? get gender;

  /// Create a copy of UpdateUserProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserProfileRequestImplCopyWith<_$UpdateUserProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
