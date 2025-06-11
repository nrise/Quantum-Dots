// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tooltip_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TooltipUiState {
  String get message => throw _privateConstructorUsedError;
  Color get textColor => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;
  TooltipPlacement get placement => throw _privateConstructorUsedError;
  double? get maxWidth => throw _privateConstructorUsedError;

  /// Create a copy of TooltipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TooltipUiStateCopyWith<TooltipUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TooltipUiStateCopyWith<$Res> {
  factory $TooltipUiStateCopyWith(
          TooltipUiState value, $Res Function(TooltipUiState) then) =
      _$TooltipUiStateCopyWithImpl<$Res, TooltipUiState>;
  @useResult
  $Res call(
      {String message,
      Color textColor,
      Color backgroundColor,
      TooltipPlacement placement,
      double? maxWidth});
}

/// @nodoc
class _$TooltipUiStateCopyWithImpl<$Res, $Val extends TooltipUiState>
    implements $TooltipUiStateCopyWith<$Res> {
  _$TooltipUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TooltipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? textColor = null,
    Object? backgroundColor = null,
    Object? placement = null,
    Object? maxWidth = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      placement: null == placement
          ? _value.placement
          : placement // ignore: cast_nullable_to_non_nullable
              as TooltipPlacement,
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TooltipUiStateImplCopyWith<$Res>
    implements $TooltipUiStateCopyWith<$Res> {
  factory _$$TooltipUiStateImplCopyWith(_$TooltipUiStateImpl value,
          $Res Function(_$TooltipUiStateImpl) then) =
      __$$TooltipUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Color textColor,
      Color backgroundColor,
      TooltipPlacement placement,
      double? maxWidth});
}

/// @nodoc
class __$$TooltipUiStateImplCopyWithImpl<$Res>
    extends _$TooltipUiStateCopyWithImpl<$Res, _$TooltipUiStateImpl>
    implements _$$TooltipUiStateImplCopyWith<$Res> {
  __$$TooltipUiStateImplCopyWithImpl(
      _$TooltipUiStateImpl _value, $Res Function(_$TooltipUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TooltipUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? textColor = null,
    Object? backgroundColor = null,
    Object? placement = null,
    Object? maxWidth = freezed,
  }) {
    return _then(_$TooltipUiStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      placement: null == placement
          ? _value.placement
          : placement // ignore: cast_nullable_to_non_nullable
              as TooltipPlacement,
      maxWidth: freezed == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$TooltipUiStateImpl implements _TooltipUiState {
  const _$TooltipUiStateImpl(
      {required this.message,
      required this.textColor,
      required this.backgroundColor,
      required this.placement,
      this.maxWidth});

  @override
  final String message;
  @override
  final Color textColor;
  @override
  final Color backgroundColor;
  @override
  final TooltipPlacement placement;
  @override
  final double? maxWidth;

  @override
  String toString() {
    return 'TooltipUiState(message: $message, textColor: $textColor, backgroundColor: $backgroundColor, placement: $placement, maxWidth: $maxWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooltipUiStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.placement, placement) ||
                other.placement == placement) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, textColor, backgroundColor, placement, maxWidth);

  /// Create a copy of TooltipUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TooltipUiStateImplCopyWith<_$TooltipUiStateImpl> get copyWith =>
      __$$TooltipUiStateImplCopyWithImpl<_$TooltipUiStateImpl>(
          this, _$identity);
}

abstract class _TooltipUiState implements TooltipUiState {
  const factory _TooltipUiState(
      {required final String message,
      required final Color textColor,
      required final Color backgroundColor,
      required final TooltipPlacement placement,
      final double? maxWidth}) = _$TooltipUiStateImpl;

  @override
  String get message;
  @override
  Color get textColor;
  @override
  Color get backgroundColor;
  @override
  TooltipPlacement get placement;
  @override
  double? get maxWidth;

  /// Create a copy of TooltipUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TooltipUiStateImplCopyWith<_$TooltipUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
