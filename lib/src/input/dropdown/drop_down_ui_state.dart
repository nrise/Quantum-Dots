import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_ui_state.freezed.dart';

@freezed
class DropDownUiState with _$DropDownUiState {
  const factory DropDownUiState({
    required String label,
    @Default(null) String? placeHolder,
    @Default(null) String? selectedText,
    @Default(true) bool enabled,
  }) = _DropDownUiState;
}
