import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'qds_box_button_ui_state.dart';

// ignore: deprecated_member_use
sealed class ButtonColorType {
  Color getButtonColor(QdsBoxButtonState state);

  Color getTextColor(QdsBoxButtonState state);

  Color getIconColor(QdsBoxButtonState state);

  const factory ButtonColorType.primary() = Primary;

  const factory ButtonColorType.secondary() = Secondary;

  const factory ButtonColorType.tertiary() = Tertiary;

  const factory ButtonColorType.custom({
    required Color activeColor,
    required Color pressedColor,
    required Color inactiveColor,
    required Color loadingColor,
    required Color textColor,
    required Color inactiveTextColor,
    required Color iconColor,
  }) = Custom;
}

// ignore: deprecated_member_use
class Primary implements ButtonColorType {
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

// ignore: deprecated_member_use
class Secondary implements ButtonColorType {
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

// ignore: deprecated_member_use
class Tertiary implements ButtonColorType {
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

// ignore: deprecated_member_use
class Custom implements ButtonColorType {
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
