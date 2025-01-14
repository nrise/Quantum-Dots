import 'package:flutter/material.dart';

import '../fade_overlay_animation_state.dart';

class FadeOverlayUiState {
  final FadeOverlayAnimationState animationState;
  final Color bgColor;
  final Widget? overlayContent;
  final Function() onFinishAnimation;
  final Duration animationDuration;
  final double opacity;

  FadeOverlayUiState({
    required this.animationState,
    required this.bgColor,
    this.overlayContent,
    required this.onFinishAnimation,
    this.animationDuration = const Duration(milliseconds: 300),
    this.opacity = 0.7,
  });
}
