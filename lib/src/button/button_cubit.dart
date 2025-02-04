import 'package:flutter_bloc/flutter_bloc.dart';

import 'button_ui_state.dart';

class ButtonCubit extends Cubit<ButtonUiState> {

  ButtonCubit({
    required ButtonUiState uiState,
  }) : super(uiState);

  void onTapDown() {
    if (state.enable && state.state == ButtonState.active) {
      emit(state.copyWith(state: ButtonState.pressed));
    }
  }

  void onTapUp() {
    if (state.enable && state.state == ButtonState.pressed) {
      emit(state.copyWith(state: ButtonState.active));
      state.onPressed?.call();
    }
  }

  void onTapCancel() {
    if (state.enable && state.state == ButtonState.pressed) {
      emit(state.copyWith(state: ButtonState.active));
    }
  }
}
