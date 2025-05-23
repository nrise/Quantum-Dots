import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_dots/qds_toast.dart';
import 'package:quantum_dots/src/toast/bloc/wippy_toast_ui_event.dart';

class WippyToastBloc extends Bloc<WippyToastUiEvent, WippyToastUiState> {
  final Queue<ShowWippyToastUiEvent> _toastShowUiEventQueue = Queue<ShowWippyToastUiEvent>();
  bool _isProcessingQueue = false;

  WippyToastBloc() : super(WippyToastUiState.invisible()) {
    on<WippyToastUiEvent>((event, emit) {
      switch (event) {
        case ShowWippyToastUiEvent():
          if (!_isProcessingQueue) {
            _isProcessingQueue = true;
            emit(
              WippyToastUiState.visible(
                message: event.message,
                messageKey: event.messageKey,
              ),
            );
          } else {
            if (!event.isCancelableMessage) {
              _toastShowUiEventQueue.add(event);
            }
          }
        case EndedVisibleAnimationToastUiEvent():
          emit(WippyToastUiState.invisible());
        case EndedInvisibleAnimationToastUiEvent():
          if (_toastShowUiEventQueue.isNotEmpty) {
            emit(WippyToastUiState.visible(message: _toastShowUiEventQueue.removeFirst().message));
          } else {
            _isProcessingQueue = false;
          }
      }
    });
  }
}
