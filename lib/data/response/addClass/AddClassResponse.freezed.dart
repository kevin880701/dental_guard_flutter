// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddClassResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddClassResponse _$AddClassResponseFromJson(Map<String, dynamic> json) {
  return _AddClassResponse.fromJson(json);
}

/// @nodoc
mixin _$AddClassResponse {
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

  /// Serializes this AddClassResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddClassResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddClassResponseCopyWith<AddClassResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddClassResponseCopyWith<$Res> {
  factory $AddClassResponseCopyWith(
          AddClassResponse value, $Res Function(AddClassResponse) then) =
      _$AddClassResponseCopyWithImpl<$Res, AddClassResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'school') int school,
      @JsonKey(name: 'grade') String grade,
      @JsonKey(name: 'class_name') String className,
      @JsonKey(name: 'teachers') List<int> teachers});
}

/// @nodoc
class _$AddClassResponseCopyWithImpl<$Res, $Val extends AddClassResponse>
    implements $AddClassResponseCopyWith<$Res> {
  _$AddClassResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddClassResponse
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
abstract class _$$AddClassResponseImplCopyWith<$Res>
    implements $AddClassResponseCopyWith<$Res> {
  factory _$$AddClassResponseImplCopyWith(_$AddClassResponseImpl value,
          $Res Function(_$AddClassResponseImpl) then) =
      __$$AddClassResponseImplCopyWithImpl<$Res>;
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
class __$$AddClassResponseImplCopyWithImpl<$Res>
    extends _$AddClassResponseCopyWithImpl<$Res, _$AddClassResponseImpl>
    implements _$$AddClassResponseImplCopyWith<$Res> {
  __$$AddClassResponseImplCopyWithImpl(_$AddClassResponseImpl _value,
      $Res Function(_$AddClassResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddClassResponse
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
    return _then(_$AddClassResponseImpl(
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
class _$AddClassResponseImpl implements _AddClassResponse {
  const _$AddClassResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'school') required this.school,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'class_name') required this.className,
      @JsonKey(name: 'teachers') required final List<int> teachers})
      : _teachers = teachers;

  factory _$AddClassResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddClassResponseImplFromJson(json);

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
    return 'AddClassResponse(id: $id, school: $school, grade: $grade, className: $className, teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddClassResponseImpl &&
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

  /// Create a copy of AddClassResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddClassResponseImplCopyWith<_$AddClassResponseImpl> get copyWith =>
      __$$AddClassResponseImplCopyWithImpl<_$AddClassResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddClassResponseImplToJson(
      this,
    );
  }
}

abstract class _AddClassResponse implements AddClassResponse {
  const factory _AddClassResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'school') required final int school,
          @JsonKey(name: 'grade') required final String grade,
          @JsonKey(name: 'class_name') required final String className,
          @JsonKey(name: 'teachers') required final List<int> teachers}) =
      _$AddClassResponseImpl;

  factory _AddClassResponse.fromJson(Map<String, dynamic> json) =
      _$AddClassResponseImpl.fromJson;

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

  /// Create a copy of AddClassResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddClassResponseImplCopyWith<_$AddClassResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
