import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

sealed class QdsBoxButtonSizeType {
  double get verticalPaddingSize;

  double get horizontalPaddingSize;

  TextStyle get textStyle;

  double get iconSize;

  double get radiusSize;

  factory QdsBoxButtonSizeType.large() = QdsBoxButtonLarge;

  factory QdsBoxButtonSizeType.medium() = QdsBoxButtonMedium;

  factory QdsBoxButtonSizeType.small() = QdsBoxButtonSmall;

  factory QdsBoxButtonSizeType.xsmall() = QdsBoxButtonXSmall;
}

class QdsBoxButtonLarge implements QdsBoxButtonSizeType {
  @override
  double get iconSize => 24.0;

  @override
  double get verticalPaddingSize => 16.0;

  @override
  double get horizontalPaddingSize => 16.0;

  @override
  TextStyle get textStyle => headline16Bold;

  @override
  double get radiusSize => 8.0;
}

class QdsBoxButtonMedium implements QdsBoxButtonSizeType {
  @override
  double get iconSize => 16.0;

  @override
  double get verticalPaddingSize => 12.0;

  @override
  double get horizontalPaddingSize => 16.0;

  @override
  TextStyle get textStyle => body14Bold;

  @override
  double get radiusSize => 8.0;
}

class QdsBoxButtonSmall implements QdsBoxButtonSizeType {
  @override
  double get iconSize => 12.0;

  @override
  double get verticalPaddingSize => 7.0;

  @override
  double get horizontalPaddingSize => 12.0;

  @override
  TextStyle get textStyle => body12Bold;

  @override
  double get radiusSize => 4.0;
}

class QdsBoxButtonXSmall implements QdsBoxButtonSizeType {
  @override
  double get iconSize => 12.0;

  @override
  double get verticalPaddingSize => 4.0;

  @override
  double get horizontalPaddingSize => 8.0;

  @override
  TextStyle get textStyle => body10Bold;

  @override
  double get radiusSize => 4.0;
}
