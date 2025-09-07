// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_group_member_extended_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddGroupMemberExtendedRequest _$AddGroupMemberExtendedRequestFromJson(
    Map<String, dynamic> json) {
  return _AddGroupMemberExtendedRequest.fromJson(json);
}

/// @nodoc
mixin _$AddGroupMemberExtendedRequest {
  @JsonKey(name: 'organization_id')
  String get organizationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  String get birthday => throw _privateConstructorUsedError; // ISO 8601 格式
  @JsonKey(name: 'gender')
  int get gender => throw _privateConstructorUsedError;

  /// Serializes this AddGroupMemberExtendedRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddGroupMemberExtendedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddGroupMemberExtendedRequestCopyWith<AddGroupMemberExtendedRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGroupMemberExtendedRequestCopyWith<$Res> {
  factory $AddGroupMemberExtendedRequestCopyWith(
          AddGroupMemberExtendedRequest value,
          $Res Function(AddGroupMemberExtendedRequest) then) =
      _$AddGroupMemberExtendedRequestCopyWithImpl<$Res,
          AddGroupMemberExtendedRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'number') String number,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'birthday') String birthday,
      @JsonKey(name: 'gender') int gender});
}

/// @nodoc
class _$AddGroupMemberExtendedRequestCopyWithImpl<$Res,
        $Val extends AddGroupMemberExtendedRequest>
    implements $AddGroupMemberExtendedRequestCopyWith<$Res> {
  _$AddGroupMemberExtendedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddGroupMemberExtendedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? groupId = null,
    Object? number = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? birthday = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGroupMemberExtendedRequestImplCopyWith<$Res>
    implements $AddGroupMemberExtendedRequestCopyWith<$Res> {
  factory _$$AddGroupMemberExtendedRequestImplCopyWith(
          _$AddGroupMemberExtendedRequestImpl value,
          $Res Function(_$AddGroupMemberExtendedRequestImpl) then) =
      __$$AddGroupMemberExtendedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'organization_id') String organizationId,
      @JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'number') String number,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'birthday') String birthday,
      @JsonKey(name: 'gender') int gender});
}

/// @nodoc
class __$$AddGroupMemberExtendedRequestImplCopyWithImpl<$Res>
    extends _$AddGroupMemberExtendedRequestCopyWithImpl<$Res,
        _$AddGroupMemberExtendedRequestImpl>
    implements _$$AddGroupMemberExtendedRequestImplCopyWith<$Res> {
  __$$AddGroupMemberExtendedRequestImplCopyWithImpl(
      _$AddGroupMemberExtendedRequestImpl _value,
      $Res Function(_$AddGroupMemberExtendedRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddGroupMemberExtendedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? groupId = null,
    Object? number = null,
    Object? name = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? birthday = null,
    Object? gender = null,
  }) {
    return _then(_$AddGroupMemberExtendedRequestImpl(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddGroupMemberExtendedRequestImpl
    implements _AddGroupMemberExtendedRequest {
  const _$AddGroupMemberExtendedRequestImpl(
      {@JsonKey(name: 'organization_id') required this.organizationId,
      @JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'number') required this.number,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'birthday') required this.birthday,
      @JsonKey(name: 'gender') required this.gender});

  factory _$AddGroupMemberExtendedRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddGroupMemberExtendedRequestImplFromJson(json);

  @override
  @JsonKey(name: 'organization_id')
  final String organizationId;
  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'number')
  final String number;
  @override
  @JsonKey(name: 'name')
  final String name;
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
  final String birthday;
// ISO 8601 格式
  @override
  @JsonKey(name: 'gender')
  final int gender;

  @override
  String toString() {
    return 'AddGroupMemberExtendedRequest(organizationId: $organizationId, groupId: $groupId, number: $number, name: $name, email: $email, phone: $phone, avatarUrl: $avatarUrl, birthday: $birthday, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGroupMemberExtendedRequestImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.number, number) || other.number == number) &&
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
  int get hashCode => Object.hash(runtimeType, organizationId, groupId, number,
      name, email, phone, avatarUrl, birthday, gender);

  /// Create a copy of AddGroupMemberExtendedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroupMemberExtendedRequestImplCopyWith<
          _$AddGroupMemberExtendedRequestImpl>
      get copyWith => __$$AddGroupMemberExtendedRequestImplCopyWithImpl<
          _$AddGroupMemberExtendedRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddGroupMemberExtendedRequestImplToJson(
      this,
    );
  }
}

abstract class _AddGroupMemberExtendedRequest
    implements AddGroupMemberExtendedRequest {
  const factory _AddGroupMemberExtendedRequest(
      {@JsonKey(name: 'organization_id') required final String organizationId,
      @JsonKey(name: 'group_id') required final String groupId,
      @JsonKey(name: 'number') required final String number,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'avatar_url') final String? avatarUrl,
      @JsonKey(name: 'birthday') required final String birthday,
      @JsonKey(name: 'gender')
      required final int gender}) = _$AddGroupMemberExtendedRequestImpl;

  factory _AddGroupMemberExtendedRequest.fromJson(Map<String, dynamic> json) =
      _$AddGroupMemberExtendedRequestImpl.fromJson;

  @override
  @JsonKey(name: 'organization_id')
  String get organizationId;
  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'number')
  String get number;
  @override
  @JsonKey(name: 'name')
  String get name;
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
  String get birthday; // ISO 8601 格式
  @override
  @JsonKey(name: 'gender')
  int get gender;

  /// Create a copy of AddGroupMemberExtendedRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGroupMemberExtendedRequestImplCopyWith<
          _$AddGroupMemberExtendedRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
