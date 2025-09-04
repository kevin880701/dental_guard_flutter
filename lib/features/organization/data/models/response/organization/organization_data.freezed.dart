// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrganizationData _$OrganizationDataFromJson(Map<String, dynamic> json) {
  return _OrganizationData.fromJson(json);
}

/// @nodoc
mixin _$OrganizationData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this OrganizationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrganizationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrganizationDataCopyWith<OrganizationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationDataCopyWith<$Res> {
  factory $OrganizationDataCopyWith(
          OrganizationData value, $Res Function(OrganizationData) then) =
      _$OrganizationDataCopyWithImpl<$Res, OrganizationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$OrganizationDataCopyWithImpl<$Res, $Val extends OrganizationData>
    implements $OrganizationDataCopyWith<$Res> {
  _$OrganizationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationDataImplCopyWith<$Res>
    implements $OrganizationDataCopyWith<$Res> {
  factory _$$OrganizationDataImplCopyWith(_$OrganizationDataImpl value,
          $Res Function(_$OrganizationDataImpl) then) =
      __$$OrganizationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$OrganizationDataImplCopyWithImpl<$Res>
    extends _$OrganizationDataCopyWithImpl<$Res, _$OrganizationDataImpl>
    implements _$$OrganizationDataImplCopyWith<$Res> {
  __$$OrganizationDataImplCopyWithImpl(_$OrganizationDataImpl _value,
      $Res Function(_$OrganizationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? type = null,
  }) {
    return _then(_$OrganizationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationDataImpl implements _OrganizationData {
  const _$OrganizationDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'type') required this.type});

  factory _$OrganizationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'OrganizationData(id: $id, name: $name, address: $address, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, type);

  /// Create a copy of OrganizationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationDataImplCopyWith<_$OrganizationDataImpl> get copyWith =>
      __$$OrganizationDataImplCopyWithImpl<_$OrganizationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationDataImplToJson(
      this,
    );
  }
}

abstract class _OrganizationData implements OrganizationData {
  const factory _OrganizationData(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'type') required final String type}) =
      _$OrganizationDataImpl;

  factory _OrganizationData.fromJson(Map<String, dynamic> json) =
      _$OrganizationDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of OrganizationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationDataImplCopyWith<_$OrganizationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
