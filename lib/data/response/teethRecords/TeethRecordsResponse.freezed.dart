// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TeethRecordsResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeethRecordsResponse _$TeethRecordsResponseFromJson(Map<String, dynamic> json) {
  return _TeethRecordsResponse.fromJson(json);
}

/// @nodoc
mixin _$TeethRecordsResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  int get student => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time')
  String get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'images_path')
  String get imagesPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'dental_plaque_count')
  int get dentalPlaqueCount => throw _privateConstructorUsedError;

  /// Serializes this TeethRecordsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeethRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeethRecordsResponseCopyWith<TeethRecordsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeethRecordsResponseCopyWith<$Res> {
  factory $TeethRecordsResponseCopyWith(TeethRecordsResponse value,
          $Res Function(TeethRecordsResponse) then) =
      _$TeethRecordsResponseCopyWithImpl<$Res, TeethRecordsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'student') int student,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'images_path') String imagesPath,
      @JsonKey(name: 'dental_plaque_count') int dentalPlaqueCount});
}

/// @nodoc
class _$TeethRecordsResponseCopyWithImpl<$Res,
        $Val extends TeethRecordsResponse>
    implements $TeethRecordsResponseCopyWith<$Res> {
  _$TeethRecordsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeethRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student = null,
    Object? dateTime = null,
    Object? imagesPath = null,
    Object? dentalPlaqueCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeethRecordsResponseImplCopyWith<$Res>
    implements $TeethRecordsResponseCopyWith<$Res> {
  factory _$$TeethRecordsResponseImplCopyWith(_$TeethRecordsResponseImpl value,
          $Res Function(_$TeethRecordsResponseImpl) then) =
      __$$TeethRecordsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'student') int student,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'images_path') String imagesPath,
      @JsonKey(name: 'dental_plaque_count') int dentalPlaqueCount});
}

/// @nodoc
class __$$TeethRecordsResponseImplCopyWithImpl<$Res>
    extends _$TeethRecordsResponseCopyWithImpl<$Res, _$TeethRecordsResponseImpl>
    implements _$$TeethRecordsResponseImplCopyWith<$Res> {
  __$$TeethRecordsResponseImplCopyWithImpl(_$TeethRecordsResponseImpl _value,
      $Res Function(_$TeethRecordsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeethRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student = null,
    Object? dateTime = null,
    Object? imagesPath = null,
    Object? dentalPlaqueCount = null,
  }) {
    return _then(_$TeethRecordsResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
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
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeethRecordsResponseImpl implements _TeethRecordsResponse {
  const _$TeethRecordsResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'student') required this.student,
      @JsonKey(name: 'date_time') required this.dateTime,
      @JsonKey(name: 'images_path') required this.imagesPath,
      @JsonKey(name: 'dental_plaque_count') required this.dentalPlaqueCount});

  factory _$TeethRecordsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeethRecordsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'student')
  final int student;
  @override
  @JsonKey(name: 'date_time')
  final String dateTime;
  @override
  @JsonKey(name: 'images_path')
  final String imagesPath;
  @override
  @JsonKey(name: 'dental_plaque_count')
  final int dentalPlaqueCount;

  @override
  String toString() {
    return 'TeethRecordsResponse(id: $id, student: $student, dateTime: $dateTime, imagesPath: $imagesPath, dentalPlaqueCount: $dentalPlaqueCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeethRecordsResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.imagesPath, imagesPath) ||
                other.imagesPath == imagesPath) &&
            (identical(other.dentalPlaqueCount, dentalPlaqueCount) ||
                other.dentalPlaqueCount == dentalPlaqueCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, student, dateTime, imagesPath, dentalPlaqueCount);

  /// Create a copy of TeethRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeethRecordsResponseImplCopyWith<_$TeethRecordsResponseImpl>
      get copyWith =>
          __$$TeethRecordsResponseImplCopyWithImpl<_$TeethRecordsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeethRecordsResponseImplToJson(
      this,
    );
  }
}

abstract class _TeethRecordsResponse implements TeethRecordsResponse {
  const factory _TeethRecordsResponse(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'student') required final int student,
      @JsonKey(name: 'date_time') required final String dateTime,
      @JsonKey(name: 'images_path') required final String imagesPath,
      @JsonKey(name: 'dental_plaque_count')
      required final int dentalPlaqueCount}) = _$TeethRecordsResponseImpl;

  factory _TeethRecordsResponse.fromJson(Map<String, dynamic> json) =
      _$TeethRecordsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'student')
  int get student;
  @override
  @JsonKey(name: 'date_time')
  String get dateTime;
  @override
  @JsonKey(name: 'images_path')
  String get imagesPath;
  @override
  @JsonKey(name: 'dental_plaque_count')
  int get dentalPlaqueCount;

  /// Create a copy of TeethRecordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeethRecordsResponseImplCopyWith<_$TeethRecordsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
