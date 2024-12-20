import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_input_focus_state.freezed.dart';

@freezed
sealed class TextInputFocusState with _$TextInputFocusState {
  const factory TextInputFocusState.focusin() = TextInputFocusin;

  const factory TextInputFocusState.focusout() = TextInputFocusout;
}
