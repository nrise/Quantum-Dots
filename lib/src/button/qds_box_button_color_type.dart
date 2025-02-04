import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'qds_box_button_ui_state.dart';

sealed class QdsBoxButtonColorType {
  Color getButtonColor(QdsBoxButtonState state);

  Color getTextColor(QdsBoxButtonState state);

  Color getIconColor(QdsBoxButtonState state);

  const factory QdsBoxButtonColorType.primary() = Primary;

  const factory QdsBoxButtonColorType.secondary() = Secondary;

  const factory QdsBoxButtonColorType.tertiary() = Tertiary;

  const factory QdsBoxButtonColorType.custom({
    required Color activeColor,
    required Color pressedColor,
    required Color inactiveColor,
    required Color loadingColor,
    required Color textColor,
    required Color inactiveTextColor,
    required Color iconColor,
  }) = Custom;
}

class Primary implements QdsBoxButtonColorType {
  const Primary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonState.active:
        return wippyPink500;
      case QdsBoxButtonState.pressed:
        return wippyPink700;
      case QdsBoxButtonState.inactive:
        return wippyGray200;
      case QdsBoxButtonState.loading:
        return wippyPink500;
    }
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }
}

class Secondary implements QdsBoxButtonColorType {
  const Secondary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonState.active:
        return wippyPink300;
      case QdsBoxButtonState.pressed:
        return wippyPink400;
      case QdsBoxButtonState.inactive:
        return wippyGray200;
      case QdsBoxButtonState.loading:
        return wippyPink300;
    }
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return wippyGray400;
    }
    return wippyPink500;
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return wippyGray400;
    }
    return wippyPink500;
  }
}

class Tertiary implements QdsBoxButtonColorType {
  const Tertiary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonState.active:
        return wippyGray200;
      case QdsBoxButtonState.pressed:
        return wippyGray300;
      case QdsBoxButtonState.inactive:
        return wippyGray200;
      case QdsBoxButtonState.loading:
        return wippyGray200;
    }
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return wippyGray400;
    }
    return wippyGray500;
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return wippyGray400;
    }
    return wippyGray700;
  }
}

class Custom implements QdsBoxButtonColorType {
  final Color activeColor;
  final Color pressedColor;
  final Color inactiveColor;
  final Color loadingColor;
  final Color textColor;
  final Color inactiveTextColor;
  final Color iconColor;

  const Custom({
    required this.activeColor,
    required this.pressedColor,
    required this.inactiveColor,
    required this.loadingColor,
    required this.textColor,
    required this.inactiveTextColor,
    required this.iconColor,
  });

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonState.active:
        return activeColor;
      case QdsBoxButtonState.pressed:
        return pressedColor;
      case QdsBoxButtonState.inactive:
        return inactiveColor;
      case QdsBoxButtonState.loading:
        return loadingColor;
    }
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state == QdsBoxButtonState.inactive) {
      return inactiveTextColor;
    }
    return textColor;
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    return iconColor;
  }
}
