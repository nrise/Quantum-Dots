import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:input/input.dart';
part 'text_field_initial_data.freezed.dart';

@freezed
class TextFieldInitialData with _$TextFieldInitialData {
  const factory TextFieldInitialData({
    @Default(null) String? label,
    @Default(null) String? helperMessage,
    @Default(null) String? placeholder,
    @Default(null) int? maxCount,
    @Default(1) int maxLine,
    @Default(null) TextInputType? inputType,
    @Default("") String text,
    @Default(TextInputFocusState.focusout()) TextInputFocusState focusState,
    @Default(TextInputErrorState.none()) TextInputErrorState errorState,
    @Default(TextInputState.inactive) TextInputState state,
    @Default(false) bool needToBlockOverflowInput,
  }) = _TextFieldInitialData;

  factory TextFieldInitialData.fromUiState(TextFieldUiState uiState) {
    return TextFieldInitialData(
      label: uiState.label,
      helperMessage: uiState.helperMessage,
      placeholder: uiState.placeholder,
      maxCount: uiState.maxCount,
      maxLine: uiState.maxLine,
      inputType: uiState.inputType,
      text: uiState.text,
      focusState: uiState.focusState,
      errorState: uiState.errorState,
      state: uiState.state,
      needToBlockOverflowInput: uiState.needToBlockOverflowInput,
    );
  }
}

extension TextFieldInitialDataExtension on TextFieldInitialData {
  TextFieldUiState toUiState() {
    return TextFieldUiState(
      label: label,
      helperMessage: helperMessage,
      placeholder: placeholder,
      maxCount: maxCount,
      maxLine: maxLine,
      inputType: inputType,
      text: text,
      focusState: focusState,
      errorState: errorState,
      state: state,
      needToBlockOverflowInput: needToBlockOverflowInput,
    );
  }
}
