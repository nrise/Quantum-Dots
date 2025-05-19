import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_button.dart';

part 'qds_profile_card_ui_state.freezed.dart';

@freezed
class QdsProfileCardUiState with _$QdsProfileCardUiState {
  const factory QdsProfileCardUiState({
    required String title,
    required bool ekycVerified,
    required String imageUrl,
    required VoidCallback onTap,
    @Default(null) String? description,
    @Default(null) String? dateTimePast,
    @Default(null) QdsBoxButtonUiState? buttonUiState,
  }) = _QdsProfileCardUiState;
}
