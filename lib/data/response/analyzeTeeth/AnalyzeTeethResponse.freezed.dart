// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AnalyzeTeethResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyzeTeethResponse _$AnalyzeTeethResponseFromJson(Map<String, dynamic> json) {
  return _AnalyzeTeethResponse.fromJson(json);
}

/// @nodoc
mixin _$AnalyzeTeethResponse {
  @JsonKey(name: 'API status')
  int get apiStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'percentage_plaque_total')
  String get percentagePlaqueTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'teethRangePath')
  String get teethRangePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'teethRangeDetectPath')
  String get teethRangeDetectPath => throw _privateConstructorUsedError;

  /// Serializes this AnalyzeTeethResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyzeTeethResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyzeTeethResponseCopyWith<AnalyzeTeethResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyzeTeethResponseCopyWith<$Res> {
  factory $AnalyzeTeethResponseCopyWith(AnalyzeTeethResponse value,
          $Res Function(AnalyzeTeethResponse) then) =
      _$AnalyzeTeethResponseCopyWithImpl<$Res, AnalyzeTeethResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'API status') int apiStatus,
      @JsonKey(name: 'percentage_plaque_total') String percentagePlaqueTotal,
      @JsonKey(name: 'teethRangePath') String teethRangePath,
      @JsonKey(name: 'teethRangeDetectPath') String teethRangeDetectPath});
}

/// @nodoc
class _$AnalyzeTeethResponseCopyWithImpl<$Res,
        $Val extends AnalyzeTeethResponse>
    implements $AnalyzeTeethResponseCopyWith<$Res> {
  _$AnalyzeTeethResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyzeTeethResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? percentagePlaqueTotal = null,
    Object? teethRangePath = null,
    Object? teethRangeDetectPath = null,
  }) {
    return _then(_value.copyWith(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as int,
      percentagePlaqueTotal: null == percentagePlaqueTotal
          ? _value.percentagePlaqueTotal
          : percentagePlaqueTotal // ignore: cast_nullable_to_non_nullable
              as String,
      teethRangePath: null == teethRangePath
          ? _value.teethRangePath
          : teethRangePath // ignore: cast_nullable_to_non_nullable
              as String,
      teethRangeDetectPath: null == teethRangeDetectPath
          ? _value.teethRangeDetectPath
          : teethRangeDetectPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyzeTeethResponseImplCopyWith<$Res>
    implements $AnalyzeTeethResponseCopyWith<$Res> {
  factory _$$AnalyzeTeethResponseImplCopyWith(_$AnalyzeTeethResponseImpl value,
          $Res Function(_$AnalyzeTeethResponseImpl) then) =
      __$$AnalyzeTeethResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'API status') int apiStatus,
      @JsonKey(name: 'percentage_plaque_total') String percentagePlaqueTotal,
      @JsonKey(name: 'teethRangePath') String teethRangePath,
      @JsonKey(name: 'teethRangeDetectPath') String teethRangeDetectPath});
}

/// @nodoc
class __$$AnalyzeTeethResponseImplCopyWithImpl<$Res>
    extends _$AnalyzeTeethResponseCopyWithImpl<$Res, _$AnalyzeTeethResponseImpl>
    implements _$$AnalyzeTeethResponseImplCopyWith<$Res> {
  __$$AnalyzeTeethResponseImplCopyWithImpl(_$AnalyzeTeethResponseImpl _value,
      $Res Function(_$AnalyzeTeethResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyzeTeethResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? percentagePlaqueTotal = null,
    Object? teethRangePath = null,
    Object? teethRangeDetectPath = null,
  }) {
    return _then(_$AnalyzeTeethResponseImpl(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as int,
      percentagePlaqueTotal: null == percentagePlaqueTotal
          ? _value.percentagePlaqueTotal
          : percentagePlaqueTotal // ignore: cast_nullable_to_non_nullable
              as String,
      teethRangePath: null == teethRangePath
          ? _value.teethRangePath
          : teethRangePath // ignore: cast_nullable_to_non_nullable
              as String,
      teethRangeDetectPath: null == teethRangeDetectPath
          ? _value.teethRangeDetectPath
          : teethRangeDetectPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyzeTeethResponseImpl implements _AnalyzeTeethResponse {
  const _$AnalyzeTeethResponseImpl(
      {@JsonKey(name: 'API status') required this.apiStatus,
      @JsonKey(name: 'percentage_plaque_total')
      required this.percentagePlaqueTotal,
      @JsonKey(name: 'teethRangePath') required this.teethRangePath,
      @JsonKey(name: 'teethRangeDetectPath')
      required this.teethRangeDetectPath});

  factory _$AnalyzeTeethResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyzeTeethResponseImplFromJson(json);

  @override
  @JsonKey(name: 'API status')
  final int apiStatus;
  @override
  @JsonKey(name: 'percentage_plaque_total')
  final String percentagePlaqueTotal;
  @override
  @JsonKey(name: 'teethRangePath')
  final String teethRangePath;
  @override
  @JsonKey(name: 'teethRangeDetectPath')
  final String teethRangeDetectPath;

  @override
  String toString() {
    return 'AnalyzeTeethResponse(apiStatus: $apiStatus, percentagePlaqueTotal: $percentagePlaqueTotal, teethRangePath: $teethRangePath, teethRangeDetectPath: $teethRangeDetectPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyzeTeethResponseImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.percentagePlaqueTotal, percentagePlaqueTotal) ||
                other.percentagePlaqueTotal == percentagePlaqueTotal) &&
            (identical(other.teethRangePath, teethRangePath) ||
                other.teethRangePath == teethRangePath) &&
            (identical(other.teethRangeDetectPath, teethRangeDetectPath) ||
                other.teethRangeDetectPath == teethRangeDetectPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, apiStatus, percentagePlaqueTotal,
      teethRangePath, teethRangeDetectPath);

  /// Create a copy of AnalyzeTeethResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyzeTeethResponseImplCopyWith<_$AnalyzeTeethResponseImpl>
      get copyWith =>
          __$$AnalyzeTeethResponseImplCopyWithImpl<_$AnalyzeTeethResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyzeTeethResponseImplToJson(
      this,
    );
  }
}

abstract class _AnalyzeTeethResponse implements AnalyzeTeethResponse {
  const factory _AnalyzeTeethResponse(
      {@JsonKey(name: 'API status') required final int apiStatus,
      @JsonKey(name: 'percentage_plaque_total')
      required final String percentagePlaqueTotal,
      @JsonKey(name: 'teethRangePath') required final String teethRangePath,
      @JsonKey(name: 'teethRangeDetectPath')
      required final String teethRangeDetectPath}) = _$AnalyzeTeethResponseImpl;

  factory _AnalyzeTeethResponse.fromJson(Map<String, dynamic> json) =
      _$AnalyzeTeethResponseImpl.fromJson;

  @override
  @JsonKey(name: 'API status')
  int get apiStatus;
  @override
  @JsonKey(name: 'percentage_plaque_total')
  String get percentagePlaqueTotal;
  @override
  @JsonKey(name: 'teethRangePath')
  String get teethRangePath;
  @override
  @JsonKey(name: 'teethRangeDetectPath')
  String get teethRangeDetectPath;

  /// Create a copy of AnalyzeTeethResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyzeTeethResponseImplCopyWith<_$AnalyzeTeethResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
