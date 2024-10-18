// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddStudentRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddStudentRequestBody _$AddStudentRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _AddStudentRequestBody.fromJson(json);
}

/// @nodoc
mixin _$AddStudentRequestBody {
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'school')
  int get school => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom')
  int get classroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth')
  String get birth => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;

  /// Serializes this AddStudentRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddStudentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddStudentRequestBodyCopyWith<AddStudentRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStudentRequestBodyCopyWith<$Res> {
  factory $AddStudentRequestBodyCopyWith(AddStudentRequestBody value,
          $Res Function(AddStudentRequestBody) then) =
      _$AddStudentRequestBodyCopyWithImpl<$Res, AddStudentRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User user,
      @JsonKey(name: 'student_id') String studentId,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'classroom') int classroom,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'gender') String gender});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AddStudentRequestBodyCopyWithImpl<$Res,
        $Val extends AddStudentRequestBody>
    implements $AddStudentRequestBodyCopyWith<$Res> {
  _$AddStudentRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddStudentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? studentId = null,
    Object? school = null,
    Object? classroom = null,
    Object? birth = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as int,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AddStudentRequestBody
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
abstract class _$$AddStudentRequestBodyImplCopyWith<$Res>
    implements $AddStudentRequestBodyCopyWith<$Res> {
  factory _$$AddStudentRequestBodyImplCopyWith(
          _$AddStudentRequestBodyImpl value,
          $Res Function(_$AddStudentRequestBodyImpl) then) =
      __$$AddStudentRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User user,
      @JsonKey(name: 'student_id') String studentId,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'classroom') int classroom,
      @JsonKey(name: 'birth') String birth,
      @JsonKey(name: 'gender') String gender});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AddStudentRequestBodyImplCopyWithImpl<$Res>
    extends _$AddStudentRequestBodyCopyWithImpl<$Res,
        _$AddStudentRequestBodyImpl>
    implements _$$AddStudentRequestBodyImplCopyWith<$Res> {
  __$$AddStudentRequestBodyImplCopyWithImpl(_$AddStudentRequestBodyImpl _value,
      $Res Function(_$AddStudentRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddStudentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? studentId = null,
    Object? school = null,
    Object? classroom = null,
    Object? birth = null,
    Object? gender = null,
  }) {
    return _then(_$AddStudentRequestBodyImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      classroom: null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as int,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddStudentRequestBodyImpl implements _AddStudentRequestBody {
  const _$AddStudentRequestBodyImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'school') required this.school,
      @JsonKey(name: 'classroom') required this.classroom,
      @JsonKey(name: 'birth') required this.birth,
      @JsonKey(name: 'gender') required this.gender});

  factory _$AddStudentRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddStudentRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final User user;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'school')
  final int school;
  @override
  @JsonKey(name: 'classroom')
  final int classroom;
  @override
  @JsonKey(name: 'birth')
  final String birth;
  @override
  @JsonKey(name: 'gender')
  final String gender;

  @override
  String toString() {
    return 'AddStudentRequestBody(user: $user, studentId: $studentId, school: $school, classroom: $classroom, birth: $birth, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentRequestBodyImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, studentId, school, classroom, birth, gender);

  /// Create a copy of AddStudentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentRequestBodyImplCopyWith<_$AddStudentRequestBodyImpl>
      get copyWith => __$$AddStudentRequestBodyImplCopyWithImpl<
          _$AddStudentRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddStudentRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _AddStudentRequestBody implements AddStudentRequestBody {
  const factory _AddStudentRequestBody(
          {@JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'student_id') required final String studentId,
          @JsonKey(name: 'school') required final int school,
          @JsonKey(name: 'classroom') required final int classroom,
          @JsonKey(name: 'birth') required final String birth,
          @JsonKey(name: 'gender') required final String gender}) =
      _$AddStudentRequestBodyImpl;

  factory _AddStudentRequestBody.fromJson(Map<String, dynamic> json) =
      _$AddStudentRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  User get user;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'school')
  int get school;
  @override
  @JsonKey(name: 'classroom')
  int get classroom;
  @override
  @JsonKey(name: 'birth')
  String get birth;
  @override
  @JsonKey(name: 'gender')
  String get gender;

  /// Create a copy of AddStudentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddStudentRequestBodyImplCopyWith<_$AddStudentRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
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
    Object? username = null,
    Object? password = null,
    Object? fullName = freezed,
    Object? email = null,
    Object? lineId = freezed,
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
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
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
    Object? username = null,
    Object? password = null,
    Object? fullName = freezed,
    Object? email = null,
    Object? lineId = freezed,
  }) {
    return _then(_$UserImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'line_id') this.lineId});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;
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
    return 'User(username: $username, password: $password, fullName: $fullName, email: $email, lineId: $lineId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lineId, lineId) || other.lineId == lineId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, fullName, email, lineId);

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
      {@JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'password') required final String password,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'line_id') final String? lineId}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;
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
