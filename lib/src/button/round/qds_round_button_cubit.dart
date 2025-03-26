import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_dots/qds_button.dart';

class QdsRoundButtonCubit extends Cubit<QdsRoundButtonUiState> {
  final void Function()? onPressed;
  DateTime? _lastPressTime;

  QdsRoundButtonCubit({
    required QdsRoundButtonUiState uiState,
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

    if (state.enable && state.state is QdsBoxButtonActive) {
      emit(state.copyWith(
        state: QdsBoxButtonState.pressed(),
      ));
    }
  }

  void onTapUp() {
    if (_isDebounceTime()) return;

    if (state.enable && state.state is QdsBoxButtonPressed) {
      _lastPressTime = DateTime.now();
      emit(state.copyWith(state: QdsBoxButtonState.active()));
      onPressed?.call();
    }
  }

  void onTapCancel() {
    if (_isDebounceTime()) return;

    if (state.enable && state.state is QdsBoxButtonPressed) {
      emit(state.copyWith(
        state: QdsBoxButtonState.active(),
      ));
    }
  }
}
