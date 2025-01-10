import 'package:freezed_annotation/freezed_annotation.dart';

part 'wippy_toast_ui_state.freezed.dart';

@freezed
sealed class WippyToastUiState with _$WippyToastUiState {
  const factory WippyToastUiState.visible({
    required String message,
    String? messageKey,
  }) = VisibleWippyToastUiState;

  const factory WippyToastUiState.invisible() = InvisibleWippyToastUiState;
}
