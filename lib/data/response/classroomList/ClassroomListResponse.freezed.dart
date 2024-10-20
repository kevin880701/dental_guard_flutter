// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ClassroomListResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassroomListResponse _$ClassroomListResponseFromJson(
    Map<String, dynamic> json) {
  return _ClassroomListResponse.fromJson(json);
}

/// @nodoc
mixin _$ClassroomListResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'school')
  int get school => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade')
  String get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'teachers')
  List<int> get teachers => throw _privateConstructorUsedError;

  /// Serializes this ClassroomListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassroomListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomListResponseCopyWith<ClassroomListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomListResponseCopyWith<$Res> {
  factory $ClassroomListResponseCopyWith(ClassroomListResponse value,
          $Res Function(ClassroomListResponse) then) =
      _$ClassroomListResponseCopyWithImpl<$Res, ClassroomListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'teachers') List<int> teachers});
}

/// @nodoc
class _$ClassroomListResponseCopyWithImpl<$Res,
        $Val extends ClassroomListResponse>
    implements $ClassroomListResponseCopyWith<$Res> {
  _$ClassroomListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassroomListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? school = null,
    Object? grade = null,
    Object? className = null,
    Object? teachers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomListResponseImplCopyWith<$Res>
    implements $ClassroomListResponseCopyWith<$Res> {
  factory _$$ClassroomListResponseImplCopyWith(
          _$ClassroomListResponseImpl value,
          $Res Function(_$ClassroomListResponseImpl) then) =
      __$$ClassroomListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'teachers') List<int> teachers});
}

/// @nodoc
class __$$ClassroomListResponseImplCopyWithImpl<$Res>
    extends _$ClassroomListResponseCopyWithImpl<$Res,
        _$ClassroomListResponseImpl>
    implements _$$ClassroomListResponseImplCopyWith<$Res> {
  __$$ClassroomListResponseImplCopyWithImpl(_$ClassroomListResponseImpl _value,
      $Res Function(_$ClassroomListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassroomListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? school = null,
    Object? grade = null,
    Object? className = null,
    Object? teachers = null,
  }) {
    return _then(_$ClassroomListResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomListResponseImpl implements _ClassroomListResponse {
  const _$ClassroomListResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'school') required this.school,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'teachers') required final List<int> teachers})
      : _teachers = teachers;

  factory _$ClassroomListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'school')
  final int school;
  @override
  @JsonKey(name: 'grade')
  final String grade;
  @override
  @JsonKey(name: 'class_name')
  final String className;
  final List<int> _teachers;
  @override
  @JsonKey(name: 'teachers')
  List<int> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'ClassroomListResponse(id: $id, school: $school, grade: $grade, className: $className, teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomListResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.className, className) ||
                other.className == className) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, school, grade, className,
      const DeepCollectionEquality().hash(_teachers));

  /// Create a copy of ClassroomListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomListResponseImplCopyWith<_$ClassroomListResponseImpl>
      get copyWith => __$$ClassroomListResponseImplCopyWithImpl<
          _$ClassroomListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomListResponseImplToJson(
      this,
    );
  }
}

abstract class _ClassroomListResponse implements ClassroomListResponse {
  const factory _ClassroomListResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'school') required final int school,
          @JsonKey(name: 'grade') required final String grade,
          @JsonKey(name: 'class_name') required final String className,
          @JsonKey(name: 'teachers') required final List<int> teachers}) =
      _$ClassroomListResponseImpl;

  factory _ClassroomListResponse.fromJson(Map<String, dynamic> json) =
      _$ClassroomListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'school')
  int get school;
  @override
  @JsonKey(name: 'grade')
  String get grade;
  @override
  @JsonKey(name: 'class_name')
  String get className;
  @override
  @JsonKey(name: 'teachers')
  List<int> get teachers;

  /// Create a copy of ClassroomListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomListResponseImplCopyWith<_$ClassroomListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
