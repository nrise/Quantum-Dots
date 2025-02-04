import 'package:flutter_bloc/flutter_bloc.dart';

import 'button_ui_state.dart';

class ButtonCubit extends Cubit<ButtonUiState> {
  final bool enable;
  final void Function() onPressed;

  ButtonCubit({
    required this.onPressed,
    required ButtonUiState uiState,
    this.enable = true,
  }) : super(uiState);

  void onTapDown() {
    if (enable && state.state == ButtonState.active) {
      emit(state.copyWith(state: ButtonState.pressed));
    }
  }

  void onTapUp() {
    if (enable && state.state == ButtonState.pressed) {
      emit(state.copyWith(state: ButtonState.active));
      onPressed();
    }
  }

  void onTapCancel() {
    if (enable && state.state == ButtonState.pressed) {
      emit(state.copyWith(state: ButtonState.active));
    }
  }
}
