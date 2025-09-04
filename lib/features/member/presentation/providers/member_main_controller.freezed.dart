// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_main_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberMainState {
  GroupWithMemberCountData? get group => throw _privateConstructorUsedError;
  UserInfoData? get user => throw _privateConstructorUsedError;
  List<BrushingRecordData> get brushingRecords =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int get refreshKey => throw _privateConstructorUsedError;

  /// Create a copy of MemberMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberMainStateCopyWith<MemberMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberMainStateCopyWith<$Res> {
  factory $MemberMainStateCopyWith(
          MemberMainState value, $Res Function(MemberMainState) then) =
      _$MemberMainStateCopyWithImpl<$Res, MemberMainState>;
  @useResult
  $Res call(
      {GroupWithMemberCountData? group,
      UserInfoData? user,
      List<BrushingRecordData> brushingRecords,
      bool isLoading,
      String? errorMessage,
      int refreshKey});

  $UserInfoDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$MemberMainStateCopyWithImpl<$Res, $Val extends MemberMainState>
    implements $MemberMainStateCopyWith<$Res> {
  _$MemberMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? user = freezed,
    Object? brushingRecords = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? refreshKey = null,
  }) {
    return _then(_value.copyWith(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupWithMemberCountData?,
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
      refreshKey: null == refreshKey
          ? _value.refreshKey
          : refreshKey // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MemberMainState
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
abstract class _$$MemberMainStateImplCopyWith<$Res>
    implements $MemberMainStateCopyWith<$Res> {
  factory _$$MemberMainStateImplCopyWith(_$MemberMainStateImpl value,
          $Res Function(_$MemberMainStateImpl) then) =
      __$$MemberMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GroupWithMemberCountData? group,
      UserInfoData? user,
      List<BrushingRecordData> brushingRecords,
      bool isLoading,
      String? errorMessage,
      int refreshKey});

  @override
  $UserInfoDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MemberMainStateImplCopyWithImpl<$Res>
    extends _$MemberMainStateCopyWithImpl<$Res, _$MemberMainStateImpl>
    implements _$$MemberMainStateImplCopyWith<$Res> {
  __$$MemberMainStateImplCopyWithImpl(
      _$MemberMainStateImpl _value, $Res Function(_$MemberMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? user = freezed,
    Object? brushingRecords = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? refreshKey = null,
  }) {
    return _then(_$MemberMainStateImpl(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupWithMemberCountData?,
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
      refreshKey: null == refreshKey
          ? _value.refreshKey
          : refreshKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MemberMainStateImpl implements _MemberMainState {
  const _$MemberMainStateImpl(
      {this.group,
      this.user,
      required final List<BrushingRecordData> brushingRecords,
      this.isLoading = false,
      this.errorMessage,
      this.refreshKey = 99})
      : _brushingRecords = brushingRecords;

  @override
  final GroupWithMemberCountData? group;
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
  @JsonKey()
  final int refreshKey;

  @override
  String toString() {
    return 'MemberMainState(group: $group, user: $user, brushingRecords: $brushingRecords, isLoading: $isLoading, errorMessage: $errorMessage, refreshKey: $refreshKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberMainStateImpl &&
            const DeepCollectionEquality().equals(other.group, group) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._brushingRecords, _brushingRecords) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.refreshKey, refreshKey) ||
                other.refreshKey == refreshKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(group),
      user,
      const DeepCollectionEquality().hash(_brushingRecords),
      isLoading,
      errorMessage,
      refreshKey);

  /// Create a copy of MemberMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberMainStateImplCopyWith<_$MemberMainStateImpl> get copyWith =>
      __$$MemberMainStateImplCopyWithImpl<_$MemberMainStateImpl>(
          this, _$identity);
}

abstract class _MemberMainState implements MemberMainState {
  const factory _MemberMainState(
      {final GroupWithMemberCountData? group,
      final UserInfoData? user,
      required final List<BrushingRecordData> brushingRecords,
      final bool isLoading,
      final String? errorMessage,
      final int refreshKey}) = _$MemberMainStateImpl;

  @override
  GroupWithMemberCountData? get group;
  @override
  UserInfoData? get user;
  @override
  List<BrushingRecordData> get brushingRecords;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  int get refreshKey;

  /// Create a copy of MemberMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberMainStateImplCopyWith<_$MemberMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
