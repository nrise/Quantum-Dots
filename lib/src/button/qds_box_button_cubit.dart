import 'package:flutter_bloc/flutter_bloc.dart';

import 'qds_box_button_ui_state.dart';

class QdsBoxButtonCubit extends Cubit<QdsBoxButtonUiState> {

  QdsBoxButtonCubit({
    required QdsBoxButtonUiState uiState,
  }) : super(uiState);

  void onTapDown() {
    if (state.enable && state.state == QdsBoxButtonState.active) {
      emit(state.copyWith(state: QdsBoxButtonState.pressed));
    }
  }

  void onTapUp() {
    if (state.enable && state.state == QdsBoxButtonState.pressed) {
      emit(state.copyWith(state: QdsBoxButtonState.active));
      state.onPressed?.call();
    }
  }

  void onTapCancel() {
    if (state.enable && state.state == QdsBoxButtonState.pressed) {
      emit(state.copyWith(state: QdsBoxButtonState.active));
    }
  }
}
