import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_foundation.dart';

import '../qds_box_button_state.dart';
import 'qds_round_button_color_type.dart';
import 'qds_round_button_label_type.dart';

part 'qds_round_button_ui_state.freezed.dart';

@freezed
class QdsRoundButtonUiState with _$QdsRoundButtonUiState {
  const factory QdsRoundButtonUiState({
    required QdsRoundButtonLabelType buttonLabelType,
    required QdsRoundButtonColorType buttonColorType,
    @Default(QdsBoxButtonState.active()) QdsBoxButtonState state,
    @Default(true) bool enable,
    @Default(400) int debounceTime,
  }) = _QdsRoundButtonUiState;
}

extension QdsRoundButtonUiStateExtension on QdsRoundButtonUiState {
  Color get buttonColor => buttonColorType.getButtonColor(state);

  Color get textColor => buttonColorType.getButtonTextColor(state);

  Color get iconColor => buttonColorType.getButtonIconColor(state);

  double get verticalPaddingSize => 12;

  double get horizontalPaddingSize => 12;

  double get iconSize => 24;

  TextStyle get textStyle => headline16Bold;

  double get radiusSize => 30;
}
