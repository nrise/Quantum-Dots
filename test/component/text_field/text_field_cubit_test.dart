import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quantum_dots/qds_input.dart';
import 'package:quantum_dots/src/input/textfield/text_field_cubit.dart';

void main() {
  group('onFocused test', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusout',
        build: () {
          textFieldInitialData = TextFieldInitialData();
          expectUiState = TextFieldUiState(focusState: TextInputFocusState.focusin());
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onFocus();
        },
        expect: () => [expectUiState]);
  });

  group('onFocusedOut test', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusin and text is empty',
        build: () {
          textFieldInitialData = TextFieldInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextFieldUiState(state: TextInputState.inactive);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusin and text is not empty',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "Hi", focusState: TextInputFocusState.focusin());
          expectUiState = TextFieldUiState(text: "Hi");
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);
  });

  group('onTextChanged test', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusout',
        build: () {
          textFieldInitialData = TextFieldInitialData();
          expectUiState = TextFieldUiState(text: "Hi", state: TextInputState.completed);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("Hi");
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusin',
        build: () {
          textFieldInitialData = TextFieldInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextFieldUiState(text: "Hi", focusState: TextInputFocusState.focusin(), state: TextInputState.typing);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("Hi");
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('when state is error',
        build: () {
          textFieldInitialData = TextFieldInitialData(errorState: TextInputErrorState.error());
          expectUiState = TextFieldUiState(state: TextInputState.completed, text: "Hi", errorState: TextInputErrorState.error());
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("Hi");
        },
        expect: () => [expectUiState]);
  });

  group('onPressedTextClear test', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusout',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "Text");
          expectUiState = TextFieldUiState(text: "");
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('when state is focusin',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "Text");
          expectUiState = TextFieldUiState(text: "", state: TextInputState.inactive);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('when state is error',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "Text", errorState: TextInputErrorState.error());
          expectUiState = TextFieldUiState(text: "", errorState: TextInputErrorState.error());
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);
  });
}
