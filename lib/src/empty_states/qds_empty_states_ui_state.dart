import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_button.dart';

part 'qds_empty_states_ui_state.freezed.dart';

@freezed
class QdsEmptyStatesUiState with _$QdsEmptyStatesUiState {
  const factory QdsEmptyStatesUiState({
    @Default(null) String? iconAssetName,
    @Default(null) String? title,
    @Default(null) String? description,
    @Default(null) QdsBoxButtonUiState? buttonUiState,
    @Default(null) VoidCallback? onPressedButton,
  }) = _QdsEmptyStatesUiState;
}
