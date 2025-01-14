// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_selective_chip_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultiSelectiveChipUiState {
  bool get isSelected => throw _privateConstructorUsedError;
  ChipUiProperties get chipUiProperties => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isSelected, ChipUiProperties chipUiProperties)
        normal,
    required TResult Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSelected, ChipUiProperties chipUiProperties)?
        normal,
    TResult? Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)?
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelected, ChipUiProperties chipUiProperties)?
        normal,
    TResult Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)?
        custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultiSelectiveNormalChipUiState value) normal,
    required TResult Function(MultiSelectiveCustomChipUiState value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultiSelectiveNormalChipUiState value)? normal,
    TResult? Function(MultiSelectiveCustomChipUiState value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultiSelectiveNormalChipUiState value)? normal,
    TResult Function(MultiSelectiveCustomChipUiState value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiSelectiveChipUiStateCopyWith<MultiSelectiveChipUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiSelectiveChipUiStateCopyWith<$Res> {
  factory $MultiSelectiveChipUiStateCopyWith(MultiSelectiveChipUiState value,
          $Res Function(MultiSelectiveChipUiState) then) =
      _$MultiSelectiveChipUiStateCopyWithImpl<$Res, MultiSelectiveChipUiState>;
  @useResult
  $Res call({bool isSelected, ChipUiProperties chipUiProperties});

  $ChipUiPropertiesCopyWith<$Res> get chipUiProperties;
}

/// @nodoc
class _$MultiSelectiveChipUiStateCopyWithImpl<$Res,
        $Val extends MultiSelectiveChipUiState>
    implements $MultiSelectiveChipUiStateCopyWith<$Res> {
  _$MultiSelectiveChipUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? chipUiProperties = null,
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
    ) as $Val);
  }

  /// Create a copy of MultiSelectiveChipUiState
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
abstract class _$$MultiSelectiveNormalChipUiStateImplCopyWith<$Res>
    implements $MultiSelectiveChipUiStateCopyWith<$Res> {
  factory _$$MultiSelectiveNormalChipUiStateImplCopyWith(
          _$MultiSelectiveNormalChipUiStateImpl value,
          $Res Function(_$MultiSelectiveNormalChipUiStateImpl) then) =
      __$$MultiSelectiveNormalChipUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSelected, ChipUiProperties chipUiProperties});

  @override
  $ChipUiPropertiesCopyWith<$Res> get chipUiProperties;
}

/// @nodoc
class __$$MultiSelectiveNormalChipUiStateImplCopyWithImpl<$Res>
    extends _$MultiSelectiveChipUiStateCopyWithImpl<$Res,
        _$MultiSelectiveNormalChipUiStateImpl>
    implements _$$MultiSelectiveNormalChipUiStateImplCopyWith<$Res> {
  __$$MultiSelectiveNormalChipUiStateImplCopyWithImpl(
      _$MultiSelectiveNormalChipUiStateImpl _value,
      $Res Function(_$MultiSelectiveNormalChipUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? chipUiProperties = null,
  }) {
    return _then(_$MultiSelectiveNormalChipUiStateImpl(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      chipUiProperties: null == chipUiProperties
          ? _value.chipUiProperties
          : chipUiProperties // ignore: cast_nullable_to_non_nullable
              as ChipUiProperties,
    ));
  }
}

/// @nodoc

class _$MultiSelectiveNormalChipUiStateImpl
    implements MultiSelectiveNormalChipUiState {
  const _$MultiSelectiveNormalChipUiStateImpl(
      {required this.isSelected, required this.chipUiProperties});

  @override
  final bool isSelected;
  @override
  final ChipUiProperties chipUiProperties;

  @override
  String toString() {
    return 'MultiSelectiveChipUiState.normal(isSelected: $isSelected, chipUiProperties: $chipUiProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiSelectiveNormalChipUiStateImpl &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.chipUiProperties, chipUiProperties) ||
                other.chipUiProperties == chipUiProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected, chipUiProperties);

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiSelectiveNormalChipUiStateImplCopyWith<
          _$MultiSelectiveNormalChipUiStateImpl>
      get copyWith => __$$MultiSelectiveNormalChipUiStateImplCopyWithImpl<
          _$MultiSelectiveNormalChipUiStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isSelected, ChipUiProperties chipUiProperties)
        normal,
    required TResult Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)
        custom,
  }) {
    return normal(isSelected, chipUiProperties);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSelected, ChipUiProperties chipUiProperties)?
        normal,
    TResult? Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)?
        custom,
  }) {
    return normal?.call(isSelected, chipUiProperties);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelected, ChipUiProperties chipUiProperties)?
        normal,
    TResult Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)?
        custom,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(isSelected, chipUiProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultiSelectiveNormalChipUiState value) normal,
    required TResult Function(MultiSelectiveCustomChipUiState value) custom,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultiSelectiveNormalChipUiState value)? normal,
    TResult? Function(MultiSelectiveCustomChipUiState value)? custom,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultiSelectiveNormalChipUiState value)? normal,
    TResult Function(MultiSelectiveCustomChipUiState value)? custom,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class MultiSelectiveNormalChipUiState
    implements MultiSelectiveChipUiState {
  const factory MultiSelectiveNormalChipUiState(
          {required final bool isSelected,
          required final ChipUiProperties chipUiProperties}) =
      _$MultiSelectiveNormalChipUiStateImpl;

  @override
  bool get isSelected;
  @override
  ChipUiProperties get chipUiProperties;

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiSelectiveNormalChipUiStateImplCopyWith<
          _$MultiSelectiveNormalChipUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiSelectiveCustomChipUiStateImplCopyWith<$Res>
    implements $MultiSelectiveChipUiStateCopyWith<$Res> {
  factory _$$MultiSelectiveCustomChipUiStateImplCopyWith(
          _$MultiSelectiveCustomChipUiStateImpl value,
          $Res Function(_$MultiSelectiveCustomChipUiStateImpl) then) =
      __$$MultiSelectiveCustomChipUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSelected,
      String iconAsset,
      Color borderColor,
      Color backgroundColor,
      Color textColor,
      ChipUiProperties chipUiProperties,
      Color? selectedTextColor,
      Color? selectedBorderColor,
      Color? selectedBackgroundColor});

  @override
  $ChipUiPropertiesCopyWith<$Res> get chipUiProperties;
}

/// @nodoc
class __$$MultiSelectiveCustomChipUiStateImplCopyWithImpl<$Res>
    extends _$MultiSelectiveChipUiStateCopyWithImpl<$Res,
        _$MultiSelectiveCustomChipUiStateImpl>
    implements _$$MultiSelectiveCustomChipUiStateImplCopyWith<$Res> {
  __$$MultiSelectiveCustomChipUiStateImplCopyWithImpl(
      _$MultiSelectiveCustomChipUiStateImpl _value,
      $Res Function(_$MultiSelectiveCustomChipUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? iconAsset = null,
    Object? borderColor = null,
    Object? backgroundColor = null,
    Object? textColor = null,
    Object? chipUiProperties = null,
    Object? selectedTextColor = freezed,
    Object? selectedBorderColor = freezed,
    Object? selectedBackgroundColor = freezed,
  }) {
    return _then(_$MultiSelectiveCustomChipUiStateImpl(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      iconAsset: null == iconAsset
          ? _value.iconAsset
          : iconAsset // ignore: cast_nullable_to_non_nullable
              as String,
      borderColor: null == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color,
      chipUiProperties: null == chipUiProperties
          ? _value.chipUiProperties
          : chipUiProperties // ignore: cast_nullable_to_non_nullable
              as ChipUiProperties,
      selectedTextColor: freezed == selectedTextColor
          ? _value.selectedTextColor
          : selectedTextColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      selectedBorderColor: freezed == selectedBorderColor
          ? _value.selectedBorderColor
          : selectedBorderColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      selectedBackgroundColor: freezed == selectedBackgroundColor
          ? _value.selectedBackgroundColor
          : selectedBackgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$MultiSelectiveCustomChipUiStateImpl
    implements MultiSelectiveCustomChipUiState {
  const _$MultiSelectiveCustomChipUiStateImpl(
      {required this.isSelected,
      required this.iconAsset,
      required this.borderColor,
      required this.backgroundColor,
      required this.textColor,
      required this.chipUiProperties,
      this.selectedTextColor,
      this.selectedBorderColor,
      this.selectedBackgroundColor});

  @override
  final bool isSelected;
  @override
  final String iconAsset;
  @override
  final Color borderColor;
  @override
  final Color backgroundColor;
  @override
  final Color textColor;
  @override
  final ChipUiProperties chipUiProperties;
  @override
  final Color? selectedTextColor;
  @override
  final Color? selectedBorderColor;
  @override
  final Color? selectedBackgroundColor;

  @override
  String toString() {
    return 'MultiSelectiveChipUiState.custom(isSelected: $isSelected, iconAsset: $iconAsset, borderColor: $borderColor, backgroundColor: $backgroundColor, textColor: $textColor, chipUiProperties: $chipUiProperties, selectedTextColor: $selectedTextColor, selectedBorderColor: $selectedBorderColor, selectedBackgroundColor: $selectedBackgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiSelectiveCustomChipUiStateImpl &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.iconAsset, iconAsset) ||
                other.iconAsset == iconAsset) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.chipUiProperties, chipUiProperties) ||
                other.chipUiProperties == chipUiProperties) &&
            (identical(other.selectedTextColor, selectedTextColor) ||
                other.selectedTextColor == selectedTextColor) &&
            (identical(other.selectedBorderColor, selectedBorderColor) ||
                other.selectedBorderColor == selectedBorderColor) &&
            (identical(
                    other.selectedBackgroundColor, selectedBackgroundColor) ||
                other.selectedBackgroundColor == selectedBackgroundColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSelected,
      iconAsset,
      borderColor,
      backgroundColor,
      textColor,
      chipUiProperties,
      selectedTextColor,
      selectedBorderColor,
      selectedBackgroundColor);

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiSelectiveCustomChipUiStateImplCopyWith<
          _$MultiSelectiveCustomChipUiStateImpl>
      get copyWith => __$$MultiSelectiveCustomChipUiStateImplCopyWithImpl<
          _$MultiSelectiveCustomChipUiStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isSelected, ChipUiProperties chipUiProperties)
        normal,
    required TResult Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)
        custom,
  }) {
    return custom(
        isSelected,
        iconAsset,
        borderColor,
        backgroundColor,
        textColor,
        chipUiProperties,
        selectedTextColor,
        selectedBorderColor,
        selectedBackgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSelected, ChipUiProperties chipUiProperties)?
        normal,
    TResult? Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)?
        custom,
  }) {
    return custom?.call(
        isSelected,
        iconAsset,
        borderColor,
        backgroundColor,
        textColor,
        chipUiProperties,
        selectedTextColor,
        selectedBorderColor,
        selectedBackgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSelected, ChipUiProperties chipUiProperties)?
        normal,
    TResult Function(
            bool isSelected,
            String iconAsset,
            Color borderColor,
            Color backgroundColor,
            Color textColor,
            ChipUiProperties chipUiProperties,
            Color? selectedTextColor,
            Color? selectedBorderColor,
            Color? selectedBackgroundColor)?
        custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(
          isSelected,
          iconAsset,
          borderColor,
          backgroundColor,
          textColor,
          chipUiProperties,
          selectedTextColor,
          selectedBorderColor,
          selectedBackgroundColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultiSelectiveNormalChipUiState value) normal,
    required TResult Function(MultiSelectiveCustomChipUiState value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MultiSelectiveNormalChipUiState value)? normal,
    TResult? Function(MultiSelectiveCustomChipUiState value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultiSelectiveNormalChipUiState value)? normal,
    TResult Function(MultiSelectiveCustomChipUiState value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class MultiSelectiveCustomChipUiState
    implements MultiSelectiveChipUiState {
  const factory MultiSelectiveCustomChipUiState(
          {required final bool isSelected,
          required final String iconAsset,
          required final Color borderColor,
          required final Color backgroundColor,
          required final Color textColor,
          required final ChipUiProperties chipUiProperties,
          final Color? selectedTextColor,
          final Color? selectedBorderColor,
          final Color? selectedBackgroundColor}) =
      _$MultiSelectiveCustomChipUiStateImpl;

  @override
  bool get isSelected;
  String get iconAsset;
  Color get borderColor;
  Color get backgroundColor;
  Color get textColor;
  @override
  ChipUiProperties get chipUiProperties;
  Color? get selectedTextColor;
  Color? get selectedBorderColor;
  Color? get selectedBackgroundColor;

  /// Create a copy of MultiSelectiveChipUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiSelectiveCustomChipUiStateImplCopyWith<
          _$MultiSelectiveCustomChipUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
