import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';

sealed class QdsRoundButtonColorType {
  Color getButtonColor(QdsBoxButtonState state);

  Color getButtonTextColor(QdsBoxButtonState state);

  Color getButtonIconColor(QdsBoxButtonState state);

  const factory QdsRoundButtonColorType.roundPrimary() = RoundPrimary;

  const factory QdsRoundButtonColorType.roundSecondary() = RoundSecondary;

  const factory QdsRoundButtonColorType.roundCustom({
    required Color activeColor,
    required Color pressedColor,
    required Color inactiveColor,
    required Color loadingColor,
    required Color textColor,
    required Color inactiveTextColor,
    required Color iconColor,
    required Color progressColor,
  }) = RoundCustom;
}

class RoundPrimary implements QdsRoundButtonColorType {
  const RoundPrimary();

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
  Color getButtonIconColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }

  @override
  Color getButtonTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }
}

class RoundSecondary implements QdsRoundButtonColorType {
  const RoundSecondary();

  @override
  Color getButtonColor(QdsBoxButtonState state) {
    switch (state) {
      case QdsBoxButtonActive():
        return wippyGray700;
      case QdsBoxButtonPressed():
        return wippyGray800;
      case QdsBoxButtonInactive():
        return wippyGray200;
      case QdsBoxButtonLoading():
        return wippyGray700;
      case QdsBoxButtonProgress():
        throw UnimplementedError();
    }
  }

  @override
  Color getButtonIconColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }

  @override
  Color getButtonTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return wippyGray400;
    }
    return wippyWhite;
  }
}

class RoundCustom implements QdsRoundButtonColorType {
  final Color activeColor;
  final Color pressedColor;
  final Color inactiveColor;
  final Color loadingColor;
  final Color progressColor;
  final Color textColor;
  final Color inactiveTextColor;
  final Color iconColor;

  const RoundCustom({
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
  Color getButtonTextColor(QdsBoxButtonState state) {
    if (state is QdsBoxButtonInactive) {
      return inactiveTextColor;
    }
    return textColor;
  }

  @override
  Color getButtonIconColor(QdsBoxButtonState state) {
    return iconColor;
  }
}
