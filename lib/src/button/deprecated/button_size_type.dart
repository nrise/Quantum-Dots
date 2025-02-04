import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

sealed class ButtonSizeType {
  double get verticalPaddingSize;

  double get horizontalPaddingSize;

  TextStyle get textStyle;

  double get iconSize;

  double get radiusSize;

  factory ButtonSizeType.large() = Large;

  factory ButtonSizeType.medium() = Medium;

  factory ButtonSizeType.small() = Small;

  factory ButtonSizeType.xsmall() = XSmall;
}

class Large implements ButtonSizeType {
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

class Medium implements ButtonSizeType {
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

class Small implements ButtonSizeType {
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

class XSmall implements ButtonSizeType {
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
