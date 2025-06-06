// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_main_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupMainState {
  int get refreshKey => throw _privateConstructorUsedError;

  /// Create a copy of GroupMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupMainStateCopyWith<GroupMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMainStateCopyWith<$Res> {
  factory $GroupMainStateCopyWith(
          GroupMainState value, $Res Function(GroupMainState) then) =
      _$GroupMainStateCopyWithImpl<$Res, GroupMainState>;
  @useResult
  $Res call({int refreshKey});
}

/// @nodoc
class _$GroupMainStateCopyWithImpl<$Res, $Val extends GroupMainState>
    implements $GroupMainStateCopyWith<$Res> {
  _$GroupMainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshKey = null,
  }) {
    return _then(_value.copyWith(
      refreshKey: null == refreshKey
          ? _value.refreshKey
          : refreshKey // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupMainStateImplCopyWith<$Res>
    implements $GroupMainStateCopyWith<$Res> {
  factory _$$GroupMainStateImplCopyWith(_$GroupMainStateImpl value,
          $Res Function(_$GroupMainStateImpl) then) =
      __$$GroupMainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int refreshKey});
}

/// @nodoc
class __$$GroupMainStateImplCopyWithImpl<$Res>
    extends _$GroupMainStateCopyWithImpl<$Res, _$GroupMainStateImpl>
    implements _$$GroupMainStateImplCopyWith<$Res> {
  __$$GroupMainStateImplCopyWithImpl(
      _$GroupMainStateImpl _value, $Res Function(_$GroupMainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupMainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshKey = null,
  }) {
    return _then(_$GroupMainStateImpl(
      refreshKey: null == refreshKey
          ? _value.refreshKey
          : refreshKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GroupMainStateImpl implements _GroupMainState {
  const _$GroupMainStateImpl({this.refreshKey = 99});

  @override
  @JsonKey()
  final int refreshKey;

  @override
  String toString() {
    return 'GroupMainState(refreshKey: $refreshKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupMainStateImpl &&
            (identical(other.refreshKey, refreshKey) ||
                other.refreshKey == refreshKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshKey);

  /// Create a copy of GroupMainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupMainStateImplCopyWith<_$GroupMainStateImpl> get copyWith =>
      __$$GroupMainStateImplCopyWithImpl<_$GroupMainStateImpl>(
          this, _$identity);
}

abstract class _GroupMainState implements GroupMainState {
  const factory _GroupMainState({final int refreshKey}) = _$GroupMainStateImpl;

  @override
  int get refreshKey;

  /// Create a copy of GroupMainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupMainStateImplCopyWith<_$GroupMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
