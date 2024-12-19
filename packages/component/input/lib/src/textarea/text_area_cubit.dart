import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:input/src/textarea/text_area_initial_data.dart';
import 'package:input/src/textarea/text_area_ui_state.dart';
import 'package:input/src/type/text_input_state.dart';

import '../type/text_input_focus_state.dart';

class TextAreaCubit extends Cubit<TextAreaUiState> {
  final TextEditingController textController;

  final Function(TextAreaUiState)? _onFocused;
  final void Function(TextAreaUiState)? _onTextChanged;
  final void Function(TextAreaUiState)? _onPressedTextClear;
  final focusNode = FocusNode();

  TextAreaCubit({
    required TextAreaInitialData initialData,
    void Function(TextAreaUiState)? onFocused,
    void Function(TextAreaUiState)? onTextChanged,
    void Function(TextAreaUiState)? onPressedTextClear,
  })  : _onFocused = onFocused,
        _onTextChanged = onTextChanged,
        _onPressedTextClear = onPressedTextClear,
        textController = TextEditingController(text: initialData.text),
        super(initialData.toUiState()) {
    focusNode.addListener(
      () {
        if (focusNode.hasFocus) {
          onFocus();
        } else {
          onFocusOut();
        }
      },
    );
  }

  void onTextChanged(String text) {
    TextInputState nextState = state.state;
    if (state.focusState is TextInputFocusin) {
      nextState = TextInputState.typing;
    } else {
      if (text.isNotEmpty) {
        nextState = TextInputState.completed;
      } else {
        nextState = TextInputState.inactive;
      }
    }
    if (state.text != text) {
      emit(state.copyWith(text: text, state: nextState));
      _onTextChanged?.call(state);
    }
  }

  void onPressedTextClear() {
    onTextChanged("");
    textController.text = "";
    _onPressedTextClear?.call(state);
  }

  void onFocus() {
    if (state.focusState is TextInputFocusout) {
      emit(state.copyWith(focusState: TextInputFocusState.focusin()));
      _onFocused?.call(state);
    }
  }

  void onFocusOut() {
    if (state.focusState is TextInputFocusin) {
      emit(state.copyWith(focusState: TextInputFocusState.focusout()));
    }
  }
}
