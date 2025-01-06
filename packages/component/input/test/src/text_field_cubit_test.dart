import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qds_input/qds_input.dart';
import 'package:qds_input/src/textfield/text_field_cubit.dart';
void main() {
  group('onFocused 테스트', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('focusout 일 때 테스트',
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

  group('onFocusedOut 테스트', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('focusin 이고 텍스트 없을 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextFieldUiState(state: TextInputState.inactive);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('focusin 이고 텍스트 있을 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "하이", focusState: TextInputFocusState.focusin());
          expectUiState = TextFieldUiState(text: "하이");
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);
  });

  group('onTextChanged 테스트', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('focusout 일 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData();
          expectUiState = TextFieldUiState(text: "하이", state: TextInputState.completed);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("하이");
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('focusin 일 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextFieldUiState(text: "하이", focusState: TextInputFocusState.focusin(), state: TextInputState.typing);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("하이");
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('error 일 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(errorState: TextInputErrorState.error());
          expectUiState = TextFieldUiState(state: TextInputState.completed, text: "하이", errorState: TextInputErrorState.error());
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("하이");
        },
        expect: () => [expectUiState]);
  });

  group('onPressedTextClear 테스트', () {
    late TextFieldInitialData textFieldInitialData;
    late TextFieldUiState expectUiState;

    blocTest<TextFieldCubit, TextFieldUiState>('focusout 일 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "텍스트");
          expectUiState = TextFieldUiState(text: "");
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('focusin 일 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "텍스트");
          expectUiState = TextFieldUiState(text: "", state: TextInputState.inactive);
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextFieldCubit, TextFieldUiState>('error 일 때 테스트',
        build: () {
          textFieldInitialData = TextFieldInitialData(text: "텍스트", errorState: TextInputErrorState.error());
          expectUiState = TextFieldUiState(text: "", errorState: TextInputErrorState.error());
          return TextFieldCubit(initialData: textFieldInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);
  });
}
