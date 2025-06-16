import 'package:freezed_annotation/freezed_annotation.dart';

part 'qds_box_button_state.freezed.dart';

@freezed
sealed class QdsBoxButtonState with _$QdsBoxButtonState {
  const factory QdsBoxButtonState.pressed() = QdsBoxButtonPressed;

  const factory QdsBoxButtonState.inactive() = QdsBoxButtonInactive;

  const factory QdsBoxButtonState.loading() = QdsBoxButtonLoading;

  const factory QdsBoxButtonState.active() = QdsBoxButtonActive;

  const factory QdsBoxButtonState.progress({
    required double progress,
    @Default(false) bool needLoading,
  }) = QdsBoxButtonProgress;
}
