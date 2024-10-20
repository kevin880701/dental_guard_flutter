// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CreateTeethRecordRequestBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTeethRecordRequestBody _$CreateTeethRecordRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _CreateTeethRecordRequestBody.fromJson(json);
}

/// @nodoc
mixin _$CreateTeethRecordRequestBody {
  @JsonKey(name: 'student')
  int get student => throw _privateConstructorUsedError;
  @JsonKey(name: 'images_path')
  String get imagesPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'dental_plaque_count')
  String get dentalPlaqueCount => throw _privateConstructorUsedError;

  /// Serializes this CreateTeethRecordRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTeethRecordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTeethRecordRequestBodyCopyWith<CreateTeethRecordRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeethRecordRequestBodyCopyWith<$Res> {
  factory $CreateTeethRecordRequestBodyCopyWith(
          CreateTeethRecordRequestBody value,
          $Res Function(CreateTeethRecordRequestBody) then) =
      _$CreateTeethRecordRequestBodyCopyWithImpl<$Res,
          CreateTeethRecordRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'student') int student,
      @JsonKey(name: 'images_path') String imagesPath,
      @JsonKey(name: 'dental_plaque_count') String dentalPlaqueCount});
}

/// @nodoc
class _$CreateTeethRecordRequestBodyCopyWithImpl<$Res,
        $Val extends CreateTeethRecordRequestBody>
    implements $CreateTeethRecordRequestBodyCopyWith<$Res> {
  _$CreateTeethRecordRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTeethRecordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? imagesPath = null,
    Object? dentalPlaqueCount = null,
  }) {
    return _then(_value.copyWith(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int,
      imagesPath: null == imagesPath
          ? _value.imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as String,
      dentalPlaqueCount: null == dentalPlaqueCount
          ? _value.dentalPlaqueCount
          : dentalPlaqueCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTeethRecordRequestBodyImplCopyWith<$Res>
    implements $CreateTeethRecordRequestBodyCopyWith<$Res> {
  factory _$$CreateTeethRecordRequestBodyImplCopyWith(
          _$CreateTeethRecordRequestBodyImpl value,
          $Res Function(_$CreateTeethRecordRequestBodyImpl) then) =
      __$$CreateTeethRecordRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'student') int student,
      @JsonKey(name: 'images_path') String imagesPath,
      @JsonKey(name: 'dental_plaque_count') String dentalPlaqueCount});
}

/// @nodoc
class __$$CreateTeethRecordRequestBodyImplCopyWithImpl<$Res>
    extends _$CreateTeethRecordRequestBodyCopyWithImpl<$Res,
        _$CreateTeethRecordRequestBodyImpl>
    implements _$$CreateTeethRecordRequestBodyImplCopyWith<$Res> {
  __$$CreateTeethRecordRequestBodyImplCopyWithImpl(
      _$CreateTeethRecordRequestBodyImpl _value,
      $Res Function(_$CreateTeethRecordRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTeethRecordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? imagesPath = null,
    Object? dentalPlaqueCount = null,
  }) {
    return _then(_$CreateTeethRecordRequestBodyImpl(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int,
      imagesPath: null == imagesPath
          ? _value.imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as String,
      dentalPlaqueCount: null == dentalPlaqueCount
          ? _value.dentalPlaqueCount
          : dentalPlaqueCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTeethRecordRequestBodyImpl
    implements _CreateTeethRecordRequestBody {
  const _$CreateTeethRecordRequestBodyImpl(
      {@JsonKey(name: 'student') required this.student,
      @JsonKey(name: 'images_path') required this.imagesPath,
      @JsonKey(name: 'dental_plaque_count') required this.dentalPlaqueCount});

  factory _$CreateTeethRecordRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateTeethRecordRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'student')
  final int student;
  @override
  @JsonKey(name: 'images_path')
  final String imagesPath;
  @override
  @JsonKey(name: 'dental_plaque_count')
  final String dentalPlaqueCount;

  @override
  String toString() {
    return 'CreateTeethRecordRequestBody(student: $student, imagesPath: $imagesPath, dentalPlaqueCount: $dentalPlaqueCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeethRecordRequestBodyImpl &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.imagesPath, imagesPath) ||
                other.imagesPath == imagesPath) &&
            (identical(other.dentalPlaqueCount, dentalPlaqueCount) ||
                other.dentalPlaqueCount == dentalPlaqueCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, student, imagesPath, dentalPlaqueCount);

  /// Create a copy of CreateTeethRecordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeethRecordRequestBodyImplCopyWith<
          _$CreateTeethRecordRequestBodyImpl>
      get copyWith => __$$CreateTeethRecordRequestBodyImplCopyWithImpl<
          _$CreateTeethRecordRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTeethRecordRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _CreateTeethRecordRequestBody
    implements CreateTeethRecordRequestBody {
  const factory _CreateTeethRecordRequestBody(
          {@JsonKey(name: 'student') required final int student,
          @JsonKey(name: 'images_path') required final String imagesPath,
          @JsonKey(name: 'dental_plaque_count')
          required final String dentalPlaqueCount}) =
      _$CreateTeethRecordRequestBodyImpl;

  factory _CreateTeethRecordRequestBody.fromJson(Map<String, dynamic> json) =
      _$CreateTeethRecordRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'student')
  int get student;
  @override
  @JsonKey(name: 'images_path')
  String get imagesPath;
  @override
  @JsonKey(name: 'dental_plaque_count')
  String get dentalPlaqueCount;

  /// Create a copy of CreateTeethRecordRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTeethRecordRequestBodyImplCopyWith<
          _$CreateTeethRecordRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
