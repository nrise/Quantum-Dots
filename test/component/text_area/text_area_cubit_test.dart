import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quantum_dots/qds_input.dart';
import 'package:quantum_dots/src/input/textarea/text_area_cubit.dart';

void main() {
  group('onFocused test', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusout',
        build: () {
          textAreaInitialData = TextAreaInitialData();
          expectUiState = TextAreaUiState(focusState: TextInputFocusState.focusin());
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onFocus();
        },
        expect: () => [expectUiState]);
  });

  group('onFocusedOut test', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusin and text is empty',
        build: () {
          textAreaInitialData = TextAreaInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextAreaUiState(state: TextInputState.inactive);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusin and text is not empty',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "Hi", focusState: TextInputFocusState.focusin());
          expectUiState = TextAreaUiState(text: "Hi");
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);
  });

  group('onTextChanged test', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusout',
        build: () {
          textAreaInitialData = TextAreaInitialData();
          expectUiState = TextAreaUiState(text: "Hi", state: TextInputState.completed);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("Hi");
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusin',
        build: () {
          textAreaInitialData = TextAreaInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextAreaUiState(text: "Hi", focusState: TextInputFocusState.focusin(), state: TextInputState.typing);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("Hi");
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('when state is error',
        build: () {
          textAreaInitialData = TextAreaInitialData(errorState: TextInputErrorState.error());
          expectUiState = TextAreaUiState(state: TextInputState.completed, text: "Hi", errorState: TextInputErrorState.error());
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("Hi");
        },
        expect: () => [expectUiState]);
  });

  group('onPressedTextClear test', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusout',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "Text");
          expectUiState = TextAreaUiState(text: "");
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('when state is focusin',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "Text");
          expectUiState = TextAreaUiState(text: "", state: TextInputState.inactive);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('when state is error',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "Text", errorState: TextInputErrorState.error());
          expectUiState = TextAreaUiState(text: "", errorState: TextInputErrorState.error());
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);
  });
}
