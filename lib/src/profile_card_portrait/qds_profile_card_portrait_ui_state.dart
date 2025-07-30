import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_button.dart';

part 'qds_profile_card_portrait_ui_state.freezed.dart';

@freezed
class QdsProfileCardPortraitUiState with _$QdsProfileCardPortraitUiState {
  const factory QdsProfileCardPortraitUiState({
    required List<String> imageUrlList,
    required String nicknameWithAge,
    required bool ekycVerified,
    String? contextMessage,
    String? workplaceAddress,
    required VoidCallback onClickBottomButton,
    required QdsBoxButtonColorType bottomButtonColorType,
    required QdsBoxButtonLabelType bottomButtonLabelType,
    required double cardRatio,
    required double cardWidth,
    @Default(true) bool enableBottomButton,
  }) = _QdsProfileCardPortraitUiState;
}
