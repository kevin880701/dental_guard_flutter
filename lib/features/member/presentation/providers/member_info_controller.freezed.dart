// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_info_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberInfoState {
  UserInfoData? get user => throw _privateConstructorUsedError;
  List<BrushingRecordData> get brushingRecords =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MemberInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberInfoStateCopyWith<MemberInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInfoStateCopyWith<$Res> {
  factory $MemberInfoStateCopyWith(
          MemberInfoState value, $Res Function(MemberInfoState) then) =
      _$MemberInfoStateCopyWithImpl<$Res, MemberInfoState>;
  @useResult
  $Res call(
      {UserInfoData? user,
      List<BrushingRecordData> brushingRecords,
      bool isLoading,
      String? errorMessage});

  $UserInfoDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$MemberInfoStateCopyWithImpl<$Res, $Val extends MemberInfoState>
    implements $MemberInfoStateCopyWith<$Res> {
  _$MemberInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? brushingRecords = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoData?,
      brushingRecords: null == brushingRecords
          ? _value.brushingRecords
          : brushingRecords // ignore: cast_nullable_to_non_nullable
              as List<BrushingRecordData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MemberInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserInfoDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberInfoStateImplCopyWith<$Res>
    implements $MemberInfoStateCopyWith<$Res> {
  factory _$$MemberInfoStateImplCopyWith(_$MemberInfoStateImpl value,
          $Res Function(_$MemberInfoStateImpl) then) =
      __$$MemberInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfoData? user,
      List<BrushingRecordData> brushingRecords,
      bool isLoading,
      String? errorMessage});

  @override
  $UserInfoDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MemberInfoStateImplCopyWithImpl<$Res>
    extends _$MemberInfoStateCopyWithImpl<$Res, _$MemberInfoStateImpl>
    implements _$$MemberInfoStateImplCopyWith<$Res> {
  __$$MemberInfoStateImplCopyWithImpl(
      _$MemberInfoStateImpl _value, $Res Function(_$MemberInfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? brushingRecords = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MemberInfoStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfoData?,
      brushingRecords: null == brushingRecords
          ? _value._brushingRecords
          : brushingRecords // ignore: cast_nullable_to_non_nullable
              as List<BrushingRecordData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MemberInfoStateImpl implements _MemberInfoState {
  const _$MemberInfoStateImpl(
      {this.user,
      required final List<BrushingRecordData> brushingRecords,
      this.isLoading = false,
      this.errorMessage})
      : _brushingRecords = brushingRecords;

  @override
  final UserInfoData? user;
  final List<BrushingRecordData> _brushingRecords;
  @override
  List<BrushingRecordData> get brushingRecords {
    if (_brushingRecords is EqualUnmodifiableListView) return _brushingRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brushingRecords);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MemberInfoState(user: $user, brushingRecords: $brushingRecords, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInfoStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._brushingRecords, _brushingRecords) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_brushingRecords),
      isLoading,
      errorMessage);

  /// Create a copy of MemberInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberInfoStateImplCopyWith<_$MemberInfoStateImpl> get copyWith =>
      __$$MemberInfoStateImplCopyWithImpl<_$MemberInfoStateImpl>(
          this, _$identity);
}

abstract class _MemberInfoState implements MemberInfoState {
  const factory _MemberInfoState(
      {final UserInfoData? user,
      required final List<BrushingRecordData> brushingRecords,
      final bool isLoading,
      final String? errorMessage}) = _$MemberInfoStateImpl;

  @override
  UserInfoData? get user;
  @override
  List<BrushingRecordData> get brushingRecords;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of MemberInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberInfoStateImplCopyWith<_$MemberInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
