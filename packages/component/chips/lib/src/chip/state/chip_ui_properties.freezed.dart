// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chip_ui_properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChipUiProperties {
  String? get uniqueKey => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Create a copy of ChipUiProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChipUiPropertiesCopyWith<ChipUiProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChipUiPropertiesCopyWith<$Res> {
  factory $ChipUiPropertiesCopyWith(
          ChipUiProperties value, $Res Function(ChipUiProperties) then) =
      _$ChipUiPropertiesCopyWithImpl<$Res, ChipUiProperties>;
  @useResult
  $Res call({String? uniqueKey, String label});
}

/// @nodoc
class _$ChipUiPropertiesCopyWithImpl<$Res, $Val extends ChipUiProperties>
    implements $ChipUiPropertiesCopyWith<$Res> {
  _$ChipUiPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChipUiProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueKey = freezed,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      uniqueKey: freezed == uniqueKey
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChipUiPropertiesImplCopyWith<$Res>
    implements $ChipUiPropertiesCopyWith<$Res> {
  factory _$$ChipUiPropertiesImplCopyWith(_$ChipUiPropertiesImpl value,
          $Res Function(_$ChipUiPropertiesImpl) then) =
      __$$ChipUiPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uniqueKey, String label});
}

/// @nodoc
class __$$ChipUiPropertiesImplCopyWithImpl<$Res>
    extends _$ChipUiPropertiesCopyWithImpl<$Res, _$ChipUiPropertiesImpl>
    implements _$$ChipUiPropertiesImplCopyWith<$Res> {
  __$$ChipUiPropertiesImplCopyWithImpl(_$ChipUiPropertiesImpl _value,
      $Res Function(_$ChipUiPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChipUiProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueKey = freezed,
    Object? label = null,
  }) {
    return _then(_$ChipUiPropertiesImpl(
      uniqueKey: freezed == uniqueKey
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChipUiPropertiesImpl implements _ChipUiProperties {
  const _$ChipUiPropertiesImpl({this.uniqueKey = null, required this.label});

  @override
  @JsonKey()
  final String? uniqueKey;
  @override
  final String label;

  @override
  String toString() {
    return 'ChipUiProperties(uniqueKey: $uniqueKey, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChipUiPropertiesImpl &&
            (identical(other.uniqueKey, uniqueKey) ||
                other.uniqueKey == uniqueKey) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uniqueKey, label);

  /// Create a copy of ChipUiProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChipUiPropertiesImplCopyWith<_$ChipUiPropertiesImpl> get copyWith =>
      __$$ChipUiPropertiesImplCopyWithImpl<_$ChipUiPropertiesImpl>(
          this, _$identity);
}

abstract class _ChipUiProperties implements ChipUiProperties {
  const factory _ChipUiProperties(
      {final String? uniqueKey,
      required final String label}) = _$ChipUiPropertiesImpl;

  @override
  String? get uniqueKey;
  @override
  String get label;

  /// Create a copy of ChipUiProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChipUiPropertiesImplCopyWith<_$ChipUiPropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
