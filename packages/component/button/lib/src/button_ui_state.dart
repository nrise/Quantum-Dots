import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qds_button/qds_button.dart';
import 'button_label_type.dart';

part 'button_ui_state.freezed.dart';

@freezed
class ButtonUiState with _$ButtonUiState {
  const factory ButtonUiState({
    required ButtonLabelType buttonLabelType,
    @Default(ButtonState.active) ButtonState state,
    required ButtonColorType buttonColorType,
    required ButtonSizeType buttonSizeType,
  }) = _ButtonUiState;
}

extension ButtonUiStateExtension on ButtonUiState {
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
