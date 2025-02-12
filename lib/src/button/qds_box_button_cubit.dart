import 'package:flutter_bloc/flutter_bloc.dart';

import 'qds_box_button_ui_state.dart';

class QdsBoxButtonCubit extends Cubit<QdsBoxButtonUiState> {
  final void Function()? onPressed;
  DateTime? _lastPressTime;

  QdsBoxButtonCubit({
    required QdsBoxButtonUiState uiState,
    this.onPressed,
  }) : super(uiState);

  bool _isDebounceTime() {
    if (_lastPressTime == null) return false;

    final now = DateTime.now();
    final difference = now.difference(_lastPressTime!);
    return difference < Duration(milliseconds: state.debounceTime);
  }

  void onTapDown() {
    if (_isDebounceTime()) return;

    if (state.enable && state.state == QdsBoxButtonState.active) {
      emit(state.copyWith(
        state: QdsBoxButtonState.pressed,
      ));
    }
  }

  void onTapUp() {
    if (_isDebounceTime()) return;

    if (state.enable && state.state == QdsBoxButtonState.pressed) {
      _lastPressTime = DateTime.now();
      emit(state.copyWith(state: QdsBoxButtonState.active));
      onPressed?.call();
    }
  }

  void onTapCancel() {
    if (_isDebounceTime()) return;

    if (state.enable && state.state == QdsBoxButtonState.pressed) {
      emit(state.copyWith(
        state: QdsBoxButtonState.active,
      ));
    }
  }
}
