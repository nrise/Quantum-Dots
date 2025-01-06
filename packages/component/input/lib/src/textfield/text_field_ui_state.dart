import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:qds_input/src/type/text_input_error_state.dart';
import 'package:qds_input/src/type/text_input_focus_state.dart';
import 'package:qds_input/src/type/text_input_state.dart';

part 'text_field_ui_state.freezed.dart';

@freezed
class TextFieldUiState with _$TextFieldUiState {
  const factory TextFieldUiState({
    @Default(null) String? label,
    @Default(null) String? helperMessage,
    @Default(null) String? placeholder,
    @Default(null) int? maxCount,
    @Default(1) int maxLine,
    @Default("") String text,
    @Default(null) TextInputType? inputType,
    @Default(TextInputFocusState.focusout()) TextInputFocusState focusState,
    @Default(TextInputErrorState.none()) TextInputErrorState errorState,
    @Default(TextInputState.inactive) TextInputState state,
    @Default(false) bool needToBlockOverflowInput,
  }) = _TextFieldUiState;
}

extension TextFieldUiStateExtension on TextFieldUiState {
  int get textCount => text.length;

  String? get limitText {
    if (maxCount != null) {
      return "$textCount/$maxCount";
    }
    return null;
  }

  Color get underlineColor {
    if (errorState is TextInputError) {
      return wippyRed500;
    }
    if (focusState is TextInputFocusin) {
      return wippyGray600;
    }
    return wippyGray300;
  }

  Color get limitTextColor {
    switch (errorState) {
      case TextInputError():
        return wippyRed500;
      case TextInputNoneError():
        return wippyGray600;
    }
  }

  bool get isShowClearIcon {
    switch (state) {
      case TextInputState.disable || TextInputState.completed:
        return false;
      default:
    }
    return text.isNotEmpty;
  }
}
