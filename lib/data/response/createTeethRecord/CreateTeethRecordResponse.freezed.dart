// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CreateTeethRecordResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTeethRecordResponse _$CreateTeethRecordResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateTeethRecordResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateTeethRecordResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time')
  String get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'images_path')
  String get imagesPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'dental_plaque_count')
  String get dentalPlaqueCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  int get student => throw _privateConstructorUsedError;

  /// Serializes this CreateTeethRecordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTeethRecordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTeethRecordResponseCopyWith<CreateTeethRecordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTeethRecordResponseCopyWith<$Res> {
  factory $CreateTeethRecordResponseCopyWith(CreateTeethRecordResponse value,
          $Res Function(CreateTeethRecordResponse) then) =
      _$CreateTeethRecordResponseCopyWithImpl<$Res, CreateTeethRecordResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'images_path') String imagesPath,
      @JsonKey(name: 'dental_plaque_count') String dentalPlaqueCount,
      @JsonKey(name: 'student') int student});
}

/// @nodoc
class _$CreateTeethRecordResponseCopyWithImpl<$Res,
        $Val extends CreateTeethRecordResponse>
    implements $CreateTeethRecordResponseCopyWith<$Res> {
  _$CreateTeethRecordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTeethRecordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? imagesPath = null,
    Object? dentalPlaqueCount = null,
    Object? student = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      imagesPath: null == imagesPath
          ? _value.imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as String,
      dentalPlaqueCount: null == dentalPlaqueCount
          ? _value.dentalPlaqueCount
          : dentalPlaqueCount // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTeethRecordResponseImplCopyWith<$Res>
    implements $CreateTeethRecordResponseCopyWith<$Res> {
  factory _$$CreateTeethRecordResponseImplCopyWith(
          _$CreateTeethRecordResponseImpl value,
          $Res Function(_$CreateTeethRecordResponseImpl) then) =
      __$$CreateTeethRecordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'images_path') String imagesPath,
      @JsonKey(name: 'dental_plaque_count') String dentalPlaqueCount,
      @JsonKey(name: 'student') int student});
}

/// @nodoc
class __$$CreateTeethRecordResponseImplCopyWithImpl<$Res>
    extends _$CreateTeethRecordResponseCopyWithImpl<$Res,
        _$CreateTeethRecordResponseImpl>
    implements _$$CreateTeethRecordResponseImplCopyWith<$Res> {
  __$$CreateTeethRecordResponseImplCopyWithImpl(
      _$CreateTeethRecordResponseImpl _value,
      $Res Function(_$CreateTeethRecordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTeethRecordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? imagesPath = null,
    Object? dentalPlaqueCount = null,
    Object? student = null,
  }) {
    return _then(_$CreateTeethRecordResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      imagesPath: null == imagesPath
          ? _value.imagesPath
          : imagesPath // ignore: cast_nullable_to_non_nullable
              as String,
      dentalPlaqueCount: null == dentalPlaqueCount
          ? _value.dentalPlaqueCount
          : dentalPlaqueCount // ignore: cast_nullable_to_non_nullable
              as String,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTeethRecordResponseImpl implements _CreateTeethRecordResponse {
  const _$CreateTeethRecordResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'date_time') required this.dateTime,
      @JsonKey(name: 'images_path') required this.imagesPath,
      @JsonKey(name: 'dental_plaque_count') required this.dentalPlaqueCount,
      @JsonKey(name: 'student') required this.student});

  factory _$CreateTeethRecordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTeethRecordResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'date_time')
  final String dateTime;
  @override
  @JsonKey(name: 'images_path')
  final String imagesPath;
  @override
  @JsonKey(name: 'dental_plaque_count')
  final String dentalPlaqueCount;
  @override
  @JsonKey(name: 'student')
  final int student;

  @override
  String toString() {
    return 'CreateTeethRecordResponse(id: $id, dateTime: $dateTime, imagesPath: $imagesPath, dentalPlaqueCount: $dentalPlaqueCount, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeethRecordResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.imagesPath, imagesPath) ||
                other.imagesPath == imagesPath) &&
            (identical(other.dentalPlaqueCount, dentalPlaqueCount) ||
                other.dentalPlaqueCount == dentalPlaqueCount) &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, dateTime, imagesPath, dentalPlaqueCount, student);

  /// Create a copy of CreateTeethRecordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeethRecordResponseImplCopyWith<_$CreateTeethRecordResponseImpl>
      get copyWith => __$$CreateTeethRecordResponseImplCopyWithImpl<
          _$CreateTeethRecordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTeethRecordResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateTeethRecordResponse implements CreateTeethRecordResponse {
  const factory _CreateTeethRecordResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'date_time') required final String dateTime,
          @JsonKey(name: 'images_path') required final String imagesPath,
          @JsonKey(name: 'dental_plaque_count')
          required final String dentalPlaqueCount,
          @JsonKey(name: 'student') required final int student}) =
      _$CreateTeethRecordResponseImpl;

  factory _CreateTeethRecordResponse.fromJson(Map<String, dynamic> json) =
      _$CreateTeethRecordResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'date_time')
  String get dateTime;
  @override
  @JsonKey(name: 'images_path')
  String get imagesPath;
  @override
  @JsonKey(name: 'dental_plaque_count')
  String get dentalPlaqueCount;
  @override
  @JsonKey(name: 'student')
  int get student;

  /// Create a copy of CreateTeethRecordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTeethRecordResponseImplCopyWith<_$CreateTeethRecordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
