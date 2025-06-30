import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../type/text_input_focus_state.dart';
import '../type/text_input_state.dart';
import 'text_area_initial_data.dart';
import 'text_area_ui_state.dart';

class TextAreaCubit extends Cubit<TextAreaUiState> {
  final TextEditingController textController;
  final ScrollController scrollController = ScrollController();

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
      final selection = textController.selection.isValid ? textController.selection : null;
      emit(
        state.copyWith(
          text: text,
          state: nextState,
          textSelection: selection,
        ),
      );
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

      if (state.textSelection != null) {
        textController.selection = state.textSelection!;
      }

      _onFocused?.call(state);
    }
  }

  void onFocusOut() {
    if (state.focusState is TextInputFocusin) {
      final selection = textController.selection.isValid ? textController.selection : null;
      emit(
        state.copyWith(
          focusState: TextInputFocusState.focusout(),
          textSelection: selection,
        ),
      );
    }
  }

  void updateInitialData(TextAreaInitialData newInitialData) {
    final shouldUpdateText =
        state.focusState is TextInputFocusout && (state.state == TextInputState.inactive || state.state == TextInputState.completed);

    if (shouldUpdateText && state.text != newInitialData.text) {
      textController.text = newInitialData.text;

      if (newInitialData.textSelection != null) {
        textController.selection = newInitialData.textSelection!;
      }

      final selection = newInitialData.textSelection?.isValid == true ? newInitialData.textSelection : null;
      emit(
        newInitialData.toUiState().copyWith(
              focusState: state.focusState,
              text: newInitialData.text,
              state: newInitialData.text.isEmpty ? TextInputState.inactive : TextInputState.completed,
              textSelection: selection,
            ),
      );
    } else {
      final selection = newInitialData.textSelection?.isValid == true ? newInitialData.textSelection : null;
      emit(
        state.copyWith(
          label: newInitialData.label,
          placeholder: newInitialData.placeholder,
          helperMessage: newInitialData.helperMessage,
          errorState: newInitialData.errorState,
          textSelection: selection,
        ),
      );

      if (state.focusState is TextInputFocusin && newInitialData.textSelection != null) {
        textController.selection = newInitialData.textSelection!;
      }
    }
  }

  @override
  Future<void> close() {
    focusNode.dispose();
    textController.dispose();
    scrollController.dispose();
    return super.close();
  }
}
