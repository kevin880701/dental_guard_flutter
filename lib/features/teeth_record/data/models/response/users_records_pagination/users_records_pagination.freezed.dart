// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_records_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersRecordsPagination _$UsersRecordsPaginationFromJson(
    Map<String, dynamic> json) {
  return _UsersRecordsPagination.fromJson(json);
}

/// @nodoc
mixin _$UsersRecordsPagination {
  @JsonKey(name: 'records')
  List<UserRecords>? get records => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  Pagination? get pagination => throw _privateConstructorUsedError;

  /// Serializes this UsersRecordsPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersRecordsPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersRecordsPaginationCopyWith<UsersRecordsPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersRecordsPaginationCopyWith<$Res> {
  factory $UsersRecordsPaginationCopyWith(UsersRecordsPagination value,
          $Res Function(UsersRecordsPagination) then) =
      _$UsersRecordsPaginationCopyWithImpl<$Res, UsersRecordsPagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<UserRecords>? records,
      @JsonKey(name: 'pagination') Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$UsersRecordsPaginationCopyWithImpl<$Res,
        $Val extends UsersRecordsPagination>
    implements $UsersRecordsPaginationCopyWith<$Res> {
  _$UsersRecordsPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersRecordsPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<UserRecords>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  /// Create a copy of UsersRecordsPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsersRecordsPaginationImplCopyWith<$Res>
    implements $UsersRecordsPaginationCopyWith<$Res> {
  factory _$$UsersRecordsPaginationImplCopyWith(
          _$UsersRecordsPaginationImpl value,
          $Res Function(_$UsersRecordsPaginationImpl) then) =
      __$$UsersRecordsPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'records') List<UserRecords>? records,
      @JsonKey(name: 'pagination') Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$UsersRecordsPaginationImplCopyWithImpl<$Res>
    extends _$UsersRecordsPaginationCopyWithImpl<$Res,
        _$UsersRecordsPaginationImpl>
    implements _$$UsersRecordsPaginationImplCopyWith<$Res> {
  __$$UsersRecordsPaginationImplCopyWithImpl(
      _$UsersRecordsPaginationImpl _value,
      $Res Function(_$UsersRecordsPaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersRecordsPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$UsersRecordsPaginationImpl(
      records: freezed == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<UserRecords>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersRecordsPaginationImpl implements _UsersRecordsPagination {
  const _$UsersRecordsPaginationImpl(
      {@JsonKey(name: 'records') final List<UserRecords>? records,
      @JsonKey(name: 'pagination') this.pagination})
      : _records = records;

  factory _$UsersRecordsPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersRecordsPaginationImplFromJson(json);

  final List<UserRecords>? _records;
  @override
  @JsonKey(name: 'records')
  List<UserRecords>? get records {
    final value = _records;
    if (value == null) return null;
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'pagination')
  final Pagination? pagination;

  @override
  String toString() {
    return 'UsersRecordsPagination(records: $records, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersRecordsPaginationImpl &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_records), pagination);

  /// Create a copy of UsersRecordsPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersRecordsPaginationImplCopyWith<_$UsersRecordsPaginationImpl>
      get copyWith => __$$UsersRecordsPaginationImplCopyWithImpl<
          _$UsersRecordsPaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersRecordsPaginationImplToJson(
      this,
    );
  }
}

abstract class _UsersRecordsPagination implements UsersRecordsPagination {
  const factory _UsersRecordsPagination(
          {@JsonKey(name: 'records') final List<UserRecords>? records,
          @JsonKey(name: 'pagination') final Pagination? pagination}) =
      _$UsersRecordsPaginationImpl;

  factory _UsersRecordsPagination.fromJson(Map<String, dynamic> json) =
      _$UsersRecordsPaginationImpl.fromJson;

  @override
  @JsonKey(name: 'records')
  List<UserRecords>? get records;
  @override
  @JsonKey(name: 'pagination')
  Pagination? get pagination;

  /// Create a copy of UsersRecordsPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersRecordsPaginationImplCopyWith<_$UsersRecordsPaginationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
