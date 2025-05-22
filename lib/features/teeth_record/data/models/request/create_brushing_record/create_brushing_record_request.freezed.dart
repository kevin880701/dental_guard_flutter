// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_brushing_record_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBrushingRecordRequest _$CreateBrushingRecordRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateBrushingRecordRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBrushingRecordRequest {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'remarks')
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'analyze_result_id')
  String? get analyzeResultId => throw _privateConstructorUsedError;

  /// Serializes this CreateBrushingRecordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBrushingRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBrushingRecordRequestCopyWith<CreateBrushingRecordRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBrushingRecordRequestCopyWith<$Res> {
  factory $CreateBrushingRecordRequestCopyWith(
          CreateBrushingRecordRequest value,
          $Res Function(CreateBrushingRecordRequest) then) =
      _$CreateBrushingRecordRequestCopyWithImpl<$Res,
          CreateBrushingRecordRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'remarks') String? remarks,
      @JsonKey(name: 'analyze_result_id') String? analyzeResultId});
}

/// @nodoc
class _$CreateBrushingRecordRequestCopyWithImpl<$Res,
        $Val extends CreateBrushingRecordRequest>
    implements $CreateBrushingRecordRequestCopyWith<$Res> {
  _$CreateBrushingRecordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBrushingRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = freezed,
    Object? remarks = freezed,
    Object? analyzeResultId = freezed,
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
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzeResultId: freezed == analyzeResultId
          ? _value.analyzeResultId
          : analyzeResultId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBrushingRecordRequestImplCopyWith<$Res>
    implements $CreateBrushingRecordRequestCopyWith<$Res> {
  factory _$$CreateBrushingRecordRequestImplCopyWith(
          _$CreateBrushingRecordRequestImpl value,
          $Res Function(_$CreateBrushingRecordRequestImpl) then) =
      __$$CreateBrushingRecordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'remarks') String? remarks,
      @JsonKey(name: 'analyze_result_id') String? analyzeResultId});
}

/// @nodoc
class __$$CreateBrushingRecordRequestImplCopyWithImpl<$Res>
    extends _$CreateBrushingRecordRequestCopyWithImpl<$Res,
        _$CreateBrushingRecordRequestImpl>
    implements _$$CreateBrushingRecordRequestImplCopyWith<$Res> {
  __$$CreateBrushingRecordRequestImplCopyWithImpl(
      _$CreateBrushingRecordRequestImpl _value,
      $Res Function(_$CreateBrushingRecordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBrushingRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = freezed,
    Object? remarks = freezed,
    Object? analyzeResultId = freezed,
  }) {
    return _then(_$CreateBrushingRecordRequestImpl(
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
      analyzeResultId: freezed == analyzeResultId
          ? _value.analyzeResultId
          : analyzeResultId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBrushingRecordRequestImpl
    implements _CreateBrushingRecordRequest {
  const _$CreateBrushingRecordRequestImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'remarks') this.remarks,
      @JsonKey(name: 'analyze_result_id') this.analyzeResultId});

  factory _$CreateBrushingRecordRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateBrushingRecordRequestImplFromJson(json);

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
  @JsonKey(name: 'analyze_result_id')
  final String? analyzeResultId;

  @override
  String toString() {
    return 'CreateBrushingRecordRequest(userId: $userId, name: $name, remarks: $remarks, analyzeResultId: $analyzeResultId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBrushingRecordRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.analyzeResultId, analyzeResultId) ||
                other.analyzeResultId == analyzeResultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, name, remarks, analyzeResultId);

  /// Create a copy of CreateBrushingRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBrushingRecordRequestImplCopyWith<_$CreateBrushingRecordRequestImpl>
      get copyWith => __$$CreateBrushingRecordRequestImplCopyWithImpl<
          _$CreateBrushingRecordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBrushingRecordRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBrushingRecordRequest
    implements CreateBrushingRecordRequest {
  const factory _CreateBrushingRecordRequest(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'remarks') final String? remarks,
          @JsonKey(name: 'analyze_result_id') final String? analyzeResultId}) =
      _$CreateBrushingRecordRequestImpl;

  factory _CreateBrushingRecordRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBrushingRecordRequestImpl.fromJson;

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
  @JsonKey(name: 'analyze_result_id')
  String? get analyzeResultId;

  /// Create a copy of CreateBrushingRecordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBrushingRecordRequestImplCopyWith<_$CreateBrushingRecordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
