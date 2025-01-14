import 'package:freezed_annotation/freezed_annotation.dart';

part 'solid_drop_down_ui_state.freezed.dart';

@freezed
class SolidDropDownUiState with _$SolidDropDownUiState {
  const factory SolidDropDownUiState({
    required String label,
    @Default(null) String? placeHolder,
    @Default(null) String? selectedText,
  }) = _SolidDropDownUiState;
}
