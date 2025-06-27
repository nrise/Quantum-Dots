import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

BoxDecoration profileCardPortraitMediumGradientDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      wippyBlue500.withAlpha(255),
      wippyBlue500.withAlpha(204),
      wippyBlue500.withAlpha(0),
    ],
    stops: [0, 0.6, 1],
  ),
);
