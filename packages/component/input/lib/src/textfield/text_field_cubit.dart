import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:input/input.dart';

class TextFieldCubit extends Cubit<TextFieldUiState> {
  final TextEditingController textController;

  final Function(TextFieldUiState)? _onFocused;
  final void Function(TextFieldUiState)? _onTextChanged;
  final void Function(TextFieldUiState)? _onPressedTextClear;
  final focusNode = FocusNode();

  TextFieldCubit({
    required TextFieldInitialData initialData,
    void Function(TextFieldUiState)? onFocused,
    void Function(TextFieldUiState)? onTextChanged,
    void Function(TextFieldUiState)? onPressedTextClear,
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
