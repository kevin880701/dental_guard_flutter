// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_user_brushing_records_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MultiUserBrushingRecordsData _$MultiUserBrushingRecordsDataFromJson(
    Map<String, dynamic> json) {
  return _MultiUserBrushingRecordsData.fromJson(json);
}

/// @nodoc
mixin _$MultiUserBrushingRecordsData {
  @JsonKey(name: 'user')
  UserInfoData get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'brushing_records')
  List<BrushingRecordData>? get brushingRecords =>
      throw _privateConstructorUsedError;

  /// Serializes this MultiUserBrushingRecordsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultiUserBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiUserBrushingRecordsDataCopyWith<MultiUserBrushingRecordsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiUserBrushingRecordsDataCopyWith<$Res> {
  factory $MultiUserBrushingRecordsDataCopyWith(
          MultiUserBrushingRecordsData value,
          $Res Function(MultiUserBrushingRecordsData) then) =
      _$MultiUserBrushingRecordsDataCopyWithImpl<$Res,
          MultiUserBrushingRecordsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserInfoData user,
      @JsonKey(name: 'brushing_records')
      List<BrushingRecordData>? brushingRecords});

  $UserInfoDataCopyWith<$Res> get user;
}

/// @nodoc
class _$MultiUserBrushingRecordsDataCopyWithImpl<$Res,
        $Val extends MultiUserBrushingRecordsData>
    implements $MultiUserBrushingRecordsDataCopyWith<$Res> {
  _$MultiUserBrushingRecordsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiUserBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? brushingRecords = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoData,
      brushingRecords: freezed == brushingRecords
          ? _value.brushingRecords
          : brushingRecords // ignore: cast_nullable_to_non_nullable
              as List<BrushingRecordData>?,
    ) as $Val);
  }

  /// Create a copy of MultiUserBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoDataCopyWith<$Res> get user {
    return $UserInfoDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MultiUserBrushingRecordsDataImplCopyWith<$Res>
    implements $MultiUserBrushingRecordsDataCopyWith<$Res> {
  factory _$$MultiUserBrushingRecordsDataImplCopyWith(
          _$MultiUserBrushingRecordsDataImpl value,
          $Res Function(_$MultiUserBrushingRecordsDataImpl) then) =
      __$$MultiUserBrushingRecordsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') UserInfoData user,
      @JsonKey(name: 'brushing_records')
      List<BrushingRecordData>? brushingRecords});

  @override
  $UserInfoDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$MultiUserBrushingRecordsDataImplCopyWithImpl<$Res>
    extends _$MultiUserBrushingRecordsDataCopyWithImpl<$Res,
        _$MultiUserBrushingRecordsDataImpl>
    implements _$$MultiUserBrushingRecordsDataImplCopyWith<$Res> {
  __$$MultiUserBrushingRecordsDataImplCopyWithImpl(
      _$MultiUserBrushingRecordsDataImpl _value,
      $Res Function(_$MultiUserBrushingRecordsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiUserBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? brushingRecords = freezed,
  }) {
    return _then(_$MultiUserBrushingRecordsDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoData,
      brushingRecords: freezed == brushingRecords
          ? _value._brushingRecords
          : brushingRecords // ignore: cast_nullable_to_non_nullable
              as List<BrushingRecordData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiUserBrushingRecordsDataImpl
    implements _MultiUserBrushingRecordsData {
  const _$MultiUserBrushingRecordsDataImpl(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'brushing_records')
      final List<BrushingRecordData>? brushingRecords})
      : _brushingRecords = brushingRecords;

  factory _$MultiUserBrushingRecordsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MultiUserBrushingRecordsDataImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final UserInfoData user;
  final List<BrushingRecordData>? _brushingRecords;
  @override
  @JsonKey(name: 'brushing_records')
  List<BrushingRecordData>? get brushingRecords {
    final value = _brushingRecords;
    if (value == null) return null;
    if (_brushingRecords is EqualUnmodifiableListView) return _brushingRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MultiUserBrushingRecordsData(user: $user, brushingRecords: $brushingRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiUserBrushingRecordsDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._brushingRecords, _brushingRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_brushingRecords));

  /// Create a copy of MultiUserBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiUserBrushingRecordsDataImplCopyWith<
          _$MultiUserBrushingRecordsDataImpl>
      get copyWith => __$$MultiUserBrushingRecordsDataImplCopyWithImpl<
          _$MultiUserBrushingRecordsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiUserBrushingRecordsDataImplToJson(
      this,
    );
  }
}

abstract class _MultiUserBrushingRecordsData
    implements MultiUserBrushingRecordsData {
  const factory _MultiUserBrushingRecordsData(
          {@JsonKey(name: 'user') required final UserInfoData user,
          @JsonKey(name: 'brushing_records')
          final List<BrushingRecordData>? brushingRecords}) =
      _$MultiUserBrushingRecordsDataImpl;

  factory _MultiUserBrushingRecordsData.fromJson(Map<String, dynamic> json) =
      _$MultiUserBrushingRecordsDataImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  UserInfoData get user;
  @override
  @JsonKey(name: 'brushing_records')
  List<BrushingRecordData>? get brushingRecords;

  /// Create a copy of MultiUserBrushingRecordsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiUserBrushingRecordsDataImplCopyWith<
          _$MultiUserBrushingRecordsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
