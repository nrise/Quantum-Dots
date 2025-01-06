// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_selective_chip_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleSelectiveChipUiState {
  bool get isSelected => throw _privateConstructorUsedError;
  ChipUiProperties get chipUiProperties => throw _privateConstructorUsedError;
  String? get iconAssetString => throw _privateConstructorUsedError;

  /// Create a copy of SingleSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleSelectiveChipUiStateCopyWith<SingleSelectiveChipUiState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleSelectiveChipUiStateCopyWith<$Res> {
  factory $SingleSelectiveChipUiStateCopyWith(SingleSelectiveChipUiState value,
          $Res Function(SingleSelectiveChipUiState) then) =
      _$SingleSelectiveChipUiStateCopyWithImpl<$Res,
          SingleSelectiveChipUiState>;
  @useResult
  $Res call(
      {bool isSelected,
      ChipUiProperties chipUiProperties,
      String? iconAssetString});

  $ChipUiPropertiesCopyWith<$Res> get chipUiProperties;
}

/// @nodoc
class _$SingleSelectiveChipUiStateCopyWithImpl<$Res,
        $Val extends SingleSelectiveChipUiState>
    implements $SingleSelectiveChipUiStateCopyWith<$Res> {
  _$SingleSelectiveChipUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? chipUiProperties = null,
    Object? iconAssetString = freezed,
  }) {
    return _then(_value.copyWith(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      chipUiProperties: null == chipUiProperties
          ? _value.chipUiProperties
          : chipUiProperties // ignore: cast_nullable_to_non_nullable
              as ChipUiProperties,
      iconAssetString: freezed == iconAssetString
          ? _value.iconAssetString
          : iconAssetString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SingleSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChipUiPropertiesCopyWith<$Res> get chipUiProperties {
    return $ChipUiPropertiesCopyWith<$Res>(_value.chipUiProperties, (value) {
      return _then(_value.copyWith(chipUiProperties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleSelectiveChipUiStateImplCopyWith<$Res>
    implements $SingleSelectiveChipUiStateCopyWith<$Res> {
  factory _$$SingleSelectiveChipUiStateImplCopyWith(
          _$SingleSelectiveChipUiStateImpl value,
          $Res Function(_$SingleSelectiveChipUiStateImpl) then) =
      __$$SingleSelectiveChipUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSelected,
      ChipUiProperties chipUiProperties,
      String? iconAssetString});

  @override
  $ChipUiPropertiesCopyWith<$Res> get chipUiProperties;
}

/// @nodoc
class __$$SingleSelectiveChipUiStateImplCopyWithImpl<$Res>
    extends _$SingleSelectiveChipUiStateCopyWithImpl<$Res,
        _$SingleSelectiveChipUiStateImpl>
    implements _$$SingleSelectiveChipUiStateImplCopyWith<$Res> {
  __$$SingleSelectiveChipUiStateImplCopyWithImpl(
      _$SingleSelectiveChipUiStateImpl _value,
      $Res Function(_$SingleSelectiveChipUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? chipUiProperties = null,
    Object? iconAssetString = freezed,
  }) {
    return _then(_$SingleSelectiveChipUiStateImpl(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      chipUiProperties: null == chipUiProperties
          ? _value.chipUiProperties
          : chipUiProperties // ignore: cast_nullable_to_non_nullable
              as ChipUiProperties,
      iconAssetString: freezed == iconAssetString
          ? _value.iconAssetString
          : iconAssetString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SingleSelectiveChipUiStateImpl implements _SingleSelectiveChipUiState {
  const _$SingleSelectiveChipUiStateImpl(
      {required this.isSelected,
      required this.chipUiProperties,
      this.iconAssetString = null});

  @override
  final bool isSelected;
  @override
  final ChipUiProperties chipUiProperties;
  @override
  @JsonKey()
  final String? iconAssetString;

  @override
  String toString() {
    return 'SingleSelectiveChipUiState(isSelected: $isSelected, chipUiProperties: $chipUiProperties, iconAssetString: $iconAssetString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleSelectiveChipUiStateImpl &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.chipUiProperties, chipUiProperties) ||
                other.chipUiProperties == chipUiProperties) &&
            (identical(other.iconAssetString, iconAssetString) ||
                other.iconAssetString == iconAssetString));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSelected, chipUiProperties, iconAssetString);

  /// Create a copy of SingleSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleSelectiveChipUiStateImplCopyWith<_$SingleSelectiveChipUiStateImpl>
      get copyWith => __$$SingleSelectiveChipUiStateImplCopyWithImpl<
          _$SingleSelectiveChipUiStateImpl>(this, _$identity);
}

abstract class _SingleSelectiveChipUiState
    implements SingleSelectiveChipUiState {
  const factory _SingleSelectiveChipUiState(
      {required final bool isSelected,
      required final ChipUiProperties chipUiProperties,
      final String? iconAssetString}) = _$SingleSelectiveChipUiStateImpl;

  @override
  bool get isSelected;
  @override
  ChipUiProperties get chipUiProperties;
  @override
  String? get iconAssetString;

  /// Create a copy of SingleSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleSelectiveChipUiStateImplCopyWith<_$SingleSelectiveChipUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
