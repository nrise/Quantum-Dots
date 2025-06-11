import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tooltip_ui_state.freezed.dart';

@freezed
class TooltipUiState with _$TooltipUiState {
  const factory TooltipUiState({
    required String message,
    required Color textColor,
    required Color backgroundColor,
    required TooltipPlacement placement,
    double? maxWidth,
  }) = _TooltipUiState;
}

enum TooltipPlacement {
  downRight,
  downCenter,
  downLeft,
  rightCenter,
  upRight,
  upCenter,
  upLeft,
  leftCenter,
}

extension TooltipPlacementX on TooltipPlacement {
  bool get isDown => name.startsWith('down');
  bool get isUp => name.startsWith('up');
  bool get isRight => name.endsWith('Right');
  bool get isLeft => name.endsWith('Left');

  double getHorizontalMargin() {
    if (isRight) return 16.0;
    if (isLeft) return -16.0;
    return 0.0;
  }
}
