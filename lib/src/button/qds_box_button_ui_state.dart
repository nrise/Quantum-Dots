import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_button.dart';
part 'qds_box_button_ui_state.freezed.dart';

@freezed
class QdsBoxButtonUiState with _$QdsBoxButtonUiState {
  const factory QdsBoxButtonUiState({
    required QdsBoxButtonLabelType buttonLabelType,
    required QdsBoxButtonColorType buttonColorType,
    required QdsBoxButtonSizeType buttonSizeType,
    @Default(ButtonState.active) ButtonState state,
    @Default(true) bool enable,
    @Default(null) void Function()? onPressed,
  }) = _QdsBoxButtonUiState;
}

extension QdsBoxButtonUiStateExtension on QdsBoxButtonUiState {
  Color get buttonColor => buttonColorType.getButtonColor(state);

  Color get textColor => buttonColorType.getTextColor(state);

  Color get iconColor => buttonColorType.getIconColor(state);

  double get verticalPaddingSize => buttonSizeType.verticalPaddingSize;

  double get horizontalPaddingSize => buttonSizeType.horizontalPaddingSize;

  double get iconSize => buttonSizeType.iconSize;

  TextStyle get textStyle => buttonSizeType.textStyle;

  double get radiusSize => buttonSizeType.radiusSize;
}

enum ButtonState { pressed, inactive, loading, active }
