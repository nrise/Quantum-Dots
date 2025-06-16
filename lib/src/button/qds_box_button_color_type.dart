import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';

sealed class QdsBoxButtonColorType {
  Color getButtonColor(QdsBoxButtonState state);

  Color getTextColor(QdsBoxButtonState state);

  Color getIconColor(QdsBoxButtonState state);

  Color getProgressColor(QdsBoxButtonState state);

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
    required Color progressColor,
  }) = Custom;
}

class Primary implements QdsBoxButtonColorType {
  const Primary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonActive():
        return wippyPink500;
      case QdsBoxButtonPressed():
        return wippyPink700;
      case QdsBoxButtonInactive():
        return wippyGray200;
      case QdsBoxButtonLoading():
        return wippyPink500;
      case QdsBoxButtonProgress():
        return wippyPink700;
    }
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }

  @override
  Color getProgressColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonProgress) {
      return wippyPink500;
    }
    throw UnimplementedError();
  }
}

class Secondary implements QdsBoxButtonColorType {
  const Secondary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonActive():
        return wippyPink300;
      case QdsBoxButtonPressed():
        return wippyPink400;
      case QdsBoxButtonInactive():
        return wippyGray200;
      case QdsBoxButtonLoading():
        return wippyPink300;
      case QdsBoxButtonProgress():
        return wippyPink400;
    }
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyPink500;
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyPink500;
  }

  @override
  Color getProgressColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonProgress) {
      return wippyPink300;
    }
    throw UnimplementedError();
  }
}

class Tertiary implements QdsBoxButtonColorType {
  const Tertiary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonActive():
        return wippyGray200;
      case QdsBoxButtonPressed():
        return wippyGray300;
      case QdsBoxButtonInactive():
        return wippyGray200;
      case QdsBoxButtonLoading():
        return wippyGray200;
      case QdsBoxButtonProgress():
        throw UnimplementedError();
    }
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyGray500;
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyGray700;
  }

  @override
  Color getProgressColor(QdsBoxButtonState state) {
    throw UnimplementedError();
  }
}

class Custom implements QdsBoxButtonColorType {
  final Color activeColor;
  final Color pressedColor;
  final Color inactiveColor;
  final Color loadingColor;
  final Color progressColor;
  final Color textColor;
  final Color inactiveTextColor;
  final Color iconColor;

  const Custom({
    required this.activeColor,
    required this.pressedColor,
    required this.inactiveColor,
    required this.loadingColor,
    required this.progressColor,
    required this.textColor,
    required this.inactiveTextColor,
    required this.iconColor,
  });

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonActive():
        return activeColor;
      case QdsBoxButtonPressed():
        return pressedColor;
      case QdsBoxButtonInactive():
        return inactiveColor;
      case QdsBoxButtonLoading():
        return loadingColor;
      case QdsBoxButtonProgress():
        return progressColor;
    }
  }

  @override
  Color getTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return inactiveTextColor;
    }
    return textColor;
  }

  @override
  Color getIconColor(QdsBoxButtonState state) {
    return iconColor;
  }

  @override
  Color getProgressColor(QdsBoxButtonState state) {
    throw UnimplementedError();
  }
}
