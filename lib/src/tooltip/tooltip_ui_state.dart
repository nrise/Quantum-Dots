import 'dart:ui';

class TooltipUiState {
  final String message;
  final Color textColor;
  final Color backgroundColor;
  final TooltipPlacement placement;
  bool visible;

  TooltipUiState({
    required this.message,
    required this.textColor,
    required this.backgroundColor,
    required this.placement,
    this.visible = true,
  });
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
