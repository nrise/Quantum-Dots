import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:input/input.dart';
import 'package:input/src/textarea/text_area_cubit.dart';

void main() {
  group('onFocused 테스트', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('focusout 일 때 테스트',
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

  group('onFocusedOut 테스트', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('focusin 이고 텍스트 없을 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextAreaUiState(state: TextInputState.inactive);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('focusin 이고 텍스트 있을 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "하이", focusState: TextInputFocusState.focusin());
          expectUiState = TextAreaUiState(text: "하이");
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onFocusOut();
        },
        expect: () => [expectUiState]);
  });

  group('onTextChanged 테스트', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('focusout 일 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData();
          expectUiState = TextAreaUiState(text: "하이", state: TextInputState.completed);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("하이");
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('focusin 일 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(focusState: TextInputFocusState.focusin());
          expectUiState = TextAreaUiState(text: "하이", focusState: TextInputFocusState.focusin(), state: TextInputState.typing);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("하이");
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('error 일 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(errorState: TextInputErrorState.error());
          expectUiState = TextAreaUiState(state: TextInputState.completed, text: "하이", errorState: TextInputErrorState.error());
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onTextChanged("하이");
        },
        expect: () => [expectUiState]);
  });

  group('onPressedTextClear 테스트', () {
    late TextAreaInitialData textAreaInitialData;
    late TextAreaUiState expectUiState;

    blocTest<TextAreaCubit, TextAreaUiState>('focusout 일 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "텍스트");
          expectUiState = TextAreaUiState(text: "");
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('focusin 일 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "텍스트");
          expectUiState = TextAreaUiState(text: "", state: TextInputState.inactive);
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);

    blocTest<TextAreaCubit, TextAreaUiState>('error 일 때 테스트',
        build: () {
          textAreaInitialData = TextAreaInitialData(text: "텍스트", errorState: TextInputErrorState.error());
          expectUiState = TextAreaUiState(text: "", errorState: TextInputErrorState.error());
          return TextAreaCubit(initialData: textAreaInitialData);
        },
        act: (cubit) {
          cubit.onPressedTextClear();
        },
        expect: () => [expectUiState]);
  });
}
