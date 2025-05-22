import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_button.dart';

part 'qds_profile_card_portrait_medium_ui_state.freezed.dart';

@freezed
class QdsProfileCardPortraitMediumUiState with _$QdsProfileCardPortraitMediumUiState {
  const factory QdsProfileCardPortraitMediumUiState({
    required String imageUrl,
    required String nicknameWithAge,
    required bool ekycVerified,
    required String dateTimeLeft,
    required String topInfoTitle,
    required String topInfoMessage,
    required VoidCallback onClickLeftButton,
    required VoidCallback onClickRightButton,
    required QdsBoxButtonColorType leftButtonColorType,
    required QdsBoxButtonColorType rightButtonColorType,
    required QdsBoxButtonLabelType leftButtonLabelType,
    required QdsBoxButtonLabelType rightButtonLabelType,
    required bool needBlur,
    @Default(true) bool leftButtonEnabled,
    @Default(true) bool rightButtonEnabled,
  }) = _QdsProfileCardPortraitMediumUiState;
}
