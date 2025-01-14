import 'dart:ui';

class TooltipUiState {
  final String message;
  final Color textColor;
  final Color backgroundColor;
  final TooltipArrowPosition arrowPosition;
  final double arrowOffset;

  TooltipUiState({
    required this.message,
    required this.textColor,
    required this.backgroundColor,
    required this.arrowPosition,
    this.arrowOffset = 0.0,
  });
}

enum TooltipArrowPosition {
  leftTop,
  leftBottom,
  rightTop,
  rightBottom,
}
