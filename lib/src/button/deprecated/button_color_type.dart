import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'button_ui_state.dart';

sealed class ButtonColorType {
  Color getButtonColor(ButtonState state);

  Color getTextColor(ButtonState state);

  Color getIconColor(ButtonState state);

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

class Primary implements ButtonColorType {
  const Primary();

  @override
  Color getButtonColor(ButtonState state) {
    switch (state) {
      case ButtonState.active:
        return wippyPink500;
      case ButtonState.pressed:
        return wippyPink700;
      case ButtonState.inactive:
        return wippyGray200;
      case ButtonState.loading:
        return wippyPink500;
    }
  }

  @override
  Color getIconColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }

  @override
  Color getTextColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }
}

class Secondary implements ButtonColorType {
  const Secondary();

  @override
  Color getButtonColor(ButtonState state) {
    switch (state) {
      case ButtonState.active:
        return wippyPink300;
      case ButtonState.pressed:
        return wippyPink400;
      case ButtonState.inactive:
        return wippyGray200;
      case ButtonState.loading:
        return wippyPink300;
    }
  }

  @override
  Color getIconColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return wippyGray400;
    }
    return wippyPink500;
  }

  @override
  Color getTextColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return wippyGray400;
    }
    return wippyPink500;
  }
}

class Tertiary implements ButtonColorType {
  const Tertiary();

  @override
  Color getButtonColor(ButtonState state) {
    switch (state) {
      case ButtonState.active:
        return wippyGray200;
      case ButtonState.pressed:
        return wippyGray300;
      case ButtonState.inactive:
        return wippyGray200;
      case ButtonState.loading:
        return wippyGray200;
    }
  }

  @override
  Color getIconColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return wippyGray400;
    }
    return wippyGray500;
  }

  @override
  Color getTextColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return wippyGray400;
    }
    return wippyGray700;
  }
}

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
  Color getButtonColor(ButtonState state) {
    switch (state) {
      case ButtonState.active:
        return activeColor;
      case ButtonState.pressed:
        return pressedColor;
      case ButtonState.inactive:
        return inactiveColor;
      case ButtonState.loading:
        return loadingColor;
    }
  }

  @override
  Color getTextColor(ButtonState state) {
    if (state == ButtonState.inactive) {
      return inactiveTextColor;
    }
    return textColor;
  }

  @override
  Color getIconColor(ButtonState state) {
    return iconColor;
  }
}
