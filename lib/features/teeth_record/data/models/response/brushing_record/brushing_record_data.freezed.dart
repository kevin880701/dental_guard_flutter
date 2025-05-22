// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brushing_record_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrushingRecordData _$BrushingRecordDataFromJson(Map<String, dynamic> json) {
  return _BrushingRecordData.fromJson(json);
}

/// @nodoc
mixin _$BrushingRecordData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'remarks')
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'analyze_result')
  AnalyzeResultData get analyzeResult => throw _privateConstructorUsedError;

  /// Serializes this BrushingRecordData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrushingRecordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrushingRecordDataCopyWith<BrushingRecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrushingRecordDataCopyWith<$Res> {
  factory $BrushingRecordDataCopyWith(
          BrushingRecordData value, $Res Function(BrushingRecordData) then) =
      _$BrushingRecordDataCopyWithImpl<$Res, BrushingRecordData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'remarks') String? remarks,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'analyze_result') AnalyzeResultData analyzeResult});

  $AnalyzeResultDataCopyWith<$Res> get analyzeResult;
}

/// @nodoc
class _$BrushingRecordDataCopyWithImpl<$Res, $Val extends BrushingRecordData>
    implements $BrushingRecordDataCopyWith<$Res> {
  _$BrushingRecordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrushingRecordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = freezed,
    Object? remarks = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? analyzeResult = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      analyzeResult: null == analyzeResult
          ? _value.analyzeResult
          : analyzeResult // ignore: cast_nullable_to_non_nullable
              as AnalyzeResultData,
    ) as $Val);
  }

  /// Create a copy of BrushingRecordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyzeResultDataCopyWith<$Res> get analyzeResult {
    return $AnalyzeResultDataCopyWith<$Res>(_value.analyzeResult, (value) {
      return _then(_value.copyWith(analyzeResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrushingRecordDataImplCopyWith<$Res>
    implements $BrushingRecordDataCopyWith<$Res> {
  factory _$$BrushingRecordDataImplCopyWith(_$BrushingRecordDataImpl value,
          $Res Function(_$BrushingRecordDataImpl) then) =
      __$$BrushingRecordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'remarks') String? remarks,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'analyze_result') AnalyzeResultData analyzeResult});

  @override
  $AnalyzeResultDataCopyWith<$Res> get analyzeResult;
}

/// @nodoc
class __$$BrushingRecordDataImplCopyWithImpl<$Res>
    extends _$BrushingRecordDataCopyWithImpl<$Res, _$BrushingRecordDataImpl>
    implements _$$BrushingRecordDataImplCopyWith<$Res> {
  __$$BrushingRecordDataImplCopyWithImpl(_$BrushingRecordDataImpl _value,
      $Res Function(_$BrushingRecordDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrushingRecordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = freezed,
    Object? remarks = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? analyzeResult = null,
  }) {
    return _then(_$BrushingRecordDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      analyzeResult: null == analyzeResult
          ? _value.analyzeResult
          : analyzeResult // ignore: cast_nullable_to_non_nullable
              as AnalyzeResultData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrushingRecordDataImpl implements _BrushingRecordData {
  const _$BrushingRecordDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'remarks') this.remarks,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'analyze_result') required this.analyzeResult});

  factory _$BrushingRecordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrushingRecordDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'remarks')
  final String? remarks;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'analyze_result')
  final AnalyzeResultData analyzeResult;

  @override
  String toString() {
    return 'BrushingRecordData(id: $id, userId: $userId, name: $name, remarks: $remarks, createdAt: $createdAt, updatedAt: $updatedAt, analyzeResult: $analyzeResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrushingRecordDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.analyzeResult, analyzeResult) ||
                other.analyzeResult == analyzeResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name, remarks,
      createdAt, updatedAt, analyzeResult);

  /// Create a copy of BrushingRecordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrushingRecordDataImplCopyWith<_$BrushingRecordDataImpl> get copyWith =>
      __$$BrushingRecordDataImplCopyWithImpl<_$BrushingRecordDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrushingRecordDataImplToJson(
      this,
    );
  }
}

abstract class _BrushingRecordData implements BrushingRecordData {
  const factory _BrushingRecordData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'remarks') final String? remarks,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'analyze_result')
          required final AnalyzeResultData analyzeResult}) =
      _$BrushingRecordDataImpl;

  factory _BrushingRecordData.fromJson(Map<String, dynamic> json) =
      _$BrushingRecordDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'remarks')
  String? get remarks;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'analyze_result')
  AnalyzeResultData get analyzeResult;

  /// Create a copy of BrushingRecordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrushingRecordDataImplCopyWith<_$BrushingRecordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
