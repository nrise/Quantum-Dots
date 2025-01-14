import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

sealed class BadgeType {}

class TextBadge extends BadgeType {
  final String text;
  final Color bgColor;
  final Color textColor;

  TextBadge({
    required this.text,
    this.bgColor = wippyPink500,
    this.textColor = wippyWhite,
  });
}

class NBadge extends BadgeType {
  final Color bgColor;
  final Color textColor;

  NBadge({
    this.bgColor = wippyPink500,
    this.textColor = wippyWhite,
  });
}

class NumberBadge extends BadgeType {
  final int number;
  final Color bgColor;
  final Color textColor;

  NumberBadge({
    required this.number,
    this.bgColor = wippyPink500,
    this.textColor = wippyWhite,
  });
}

class DotBadge extends BadgeType {
  final Color color;

  DotBadge({this.color = wippyPink500});
}
