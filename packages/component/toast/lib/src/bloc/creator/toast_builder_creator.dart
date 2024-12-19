import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';

class ToastBlocBuilderCreator {
  static const int _shortMessageShowingMilliSecondsDuration = 1000;
  static const int _longMessageShowingMilliSecondsDuration = 2000;
  static const int _longMessageLength = 20;
  static const int _visibilityAnimateMilliSecondsDuration = 300;

  int _getToastDuration(String message) {
    if (message.length < _longMessageLength) {
      return _shortMessageShowingMilliSecondsDuration;
    } else {
      return _longMessageShowingMilliSecondsDuration;
    }
  }

  Future<void> _onEndVisibleAnimation(WippyToastBloc bloc, String message) async {
    await Future.delayed(Duration(milliseconds: _getToastDuration(message)));
    bloc.add(const WippyToastUiEvent.endedVisibleAnimation());
  }

  Future<void> _onEndInvisibleAnimation(WippyToastBloc bloc) async {
    bloc.add(const WippyToastUiEvent.endedInvisibleAnimation());
  }

  BlocBuilder create() => BlocBuilder<WippyToastBloc, WippyToastUiState>(
        builder: (context, state) {
          VisibleWippyToastUiState? visibleToastUiState;

          if (state is VisibleWippyToastUiState) {
            visibleToastUiState = state;
          }

          return Container(
            alignment: Alignment.center,
            child: AnimatedOpacity(
              opacity: (visibleToastUiState != null) ? 1.0 : 0.0,
              duration: const Duration(milliseconds: _visibilityAnimateMilliSecondsDuration),
              child: Material(
                color: Colors.transparent,
                child: WippyToast(message: visibleToastUiState?.message ?? ""),
              ),
              onEnd: () {
                WippyToastBloc bloc = BlocProvider.of<WippyToastBloc>(context);
                if (visibleToastUiState != null) {
                  _onEndVisibleAnimation(bloc, visibleToastUiState.message);
                } else {
                  _onEndInvisibleAnimation(bloc);
                }
              },
            ),
          );
        },
      );
}
