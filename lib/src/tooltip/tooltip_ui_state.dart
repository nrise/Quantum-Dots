import 'dart:ui';

class TooltipUiState {
  final String message;
  final Color textColor;
  final Color backgroundColor;
  final TooltipArrowPosition arrowPosition;
  final double arrowOffset;
  bool visible;

  TooltipUiState({
    required this.message,
    required this.textColor,
    required this.backgroundColor,
    required this.arrowPosition,
    this.arrowOffset = 0.0,
    this.visible = true,
  });
}

enum TooltipArrowPosition {
  leftTop,
  leftBottom,
  rightTop,
  rightBottom,
}
