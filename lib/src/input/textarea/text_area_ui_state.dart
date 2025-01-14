import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_foundation.dart';
import '../type/text_input_error_state.dart';
import '../type/text_input_focus_state.dart';
import '../type/text_input_state.dart';

part 'text_area_ui_state.freezed.dart';

@freezed
class TextAreaUiState with _$TextAreaUiState {
  const factory TextAreaUiState({
    @Default(null) String? label,
    @Default(null) String? helperMessage,
    @Default(null) String? placeholder,
    @Default(null) int? maxCount,
    @Default(null) int? maxLines,
    @Default("") String text,
    @Default(null) TextInputType? inputType,
    @Default(TextInputFocusState.focusout()) TextInputFocusState focusState,
    @Default(TextInputErrorState.none()) TextInputErrorState errorState,
    @Default(TextInputState.inactive) TextInputState state,
  }) = _TextAreaUiState;
}

extension TextAreaUiStateExtension on TextAreaUiState {
  int get textCount => text.length;

  String? get limitText {
    if (maxCount != null) {
      return "$textCount/$maxCount";
    }
    return null;
  }

  Color get areaColor {
    if (errorState is TextInputError) {
      return wippyPink200;
    }
    return wippyGray100;
  }

  Color get limitTextColor {
    switch (errorState) {
      case TextInputError():
        return wippyRed500;
      case TextInputNoneError():
        return wippyGray600;
    }
  }
}
