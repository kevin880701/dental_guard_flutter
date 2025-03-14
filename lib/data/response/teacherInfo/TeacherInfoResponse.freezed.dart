// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TeacherInfoResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherInfoResponse _$TeacherInfoResponseFromJson(Map<String, dynamic> json) {
  return _TeacherInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$TeacherInfoResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'school')
  int get school => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth')
  String get birth => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this TeacherInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherInfoResponseCopyWith<TeacherInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherInfoResponseCopyWith<$Res> {
  factory $TeacherInfoResponseCopyWith(
          TeacherInfoResponse value, $Res Function(TeacherInfoResponse) then) =
      _$TeacherInfoResponseCopyWithImpl<$Res, TeacherInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'phone_number') String phoneNumber});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TeacherInfoResponseCopyWithImpl<$Res, $Val extends TeacherInfoResponse>
    implements $TeacherInfoResponseCopyWith<$Res> {
  _$TeacherInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? school = null,
    Object? gender = null,
    Object? birth = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TeacherInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherInfoResponseImplCopyWith<$Res>
    implements $TeacherInfoResponseCopyWith<$Res> {
  factory _$$TeacherInfoResponseImplCopyWith(_$TeacherInfoResponseImpl value,
          $Res Function(_$TeacherInfoResponseImpl) then) =
      __$$TeacherInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'gender') String gender,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'phone_number') String phoneNumber});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$TeacherInfoResponseImplCopyWithImpl<$Res>
    extends _$TeacherInfoResponseCopyWithImpl<$Res, _$TeacherInfoResponseImpl>
    implements _$$TeacherInfoResponseImplCopyWith<$Res> {
  __$$TeacherInfoResponseImplCopyWithImpl(_$TeacherInfoResponseImpl _value,
      $Res Function(_$TeacherInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? school = null,
    Object? gender = null,
    Object? birth = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$TeacherInfoResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherInfoResponseImpl implements _TeacherInfoResponse {
  const _$TeacherInfoResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'school') required this.school,
      @JsonKey(name: 'gender') required this.gender,
      @JsonKey(name: 'birth') required this.birth,
      @JsonKey(name: 'phone_number') required this.phoneNumber});

  factory _$TeacherInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'user')
  final User user;
  @override
  @JsonKey(name: 'school')
  final int school;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(name: 'birth')
  final String birth;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'TeacherInfoResponse(id: $id, user: $user, school: $school, gender: $gender, birth: $birth, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherInfoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, school, gender, birth, phoneNumber);

  /// Create a copy of TeacherInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherInfoResponseImplCopyWith<_$TeacherInfoResponseImpl> get copyWith =>
      __$$TeacherInfoResponseImplCopyWithImpl<_$TeacherInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _TeacherInfoResponse implements TeacherInfoResponse {
  const factory _TeacherInfoResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'school') required final int school,
          @JsonKey(name: 'gender') required final String gender,
          @JsonKey(name: 'birth') required final String birth,
          @JsonKey(name: 'phone_number') required final String phoneNumber}) =
      _$TeacherInfoResponseImpl;

  factory _TeacherInfoResponse.fromJson(Map<String, dynamic> json) =
      _$TeacherInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'user')
  User get user;
  @override
  @JsonKey(name: 'school')
  int get school;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(name: 'birth')
  String get birth;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Create a copy of TeacherInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherInfoResponseImplCopyWith<_$TeacherInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_id')
  String? get lineId => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'line_id') String? lineId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? email = null,
    Object? lineId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lineId: freezed == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'line_id') String? lineId});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? email = null,
    Object? lineId = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      lineId: freezed == lineId
          ? _value.lineId
          : lineId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'line_id') this.lineId});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'line_id')
  final String? lineId;

  @override
  String toString() {
    return 'User(id: $id, username: $username, fullName: $fullName, email: $email, lineId: $lineId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lineId, lineId) || other.lineId == lineId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, fullName, email, lineId);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'line_id') final String? lineId}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'line_id')
  String? get lineId;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
