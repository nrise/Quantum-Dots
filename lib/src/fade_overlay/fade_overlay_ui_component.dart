import 'package:flutter/material.dart';

import 'fade_overlay_animation_state.dart';
import 'model/fade_overlay_ui_state.dart';

class FadeOverlayUiComponent extends StatefulWidget {
  final Widget child;
  final FadeOverlayUiState state;

  const FadeOverlayUiComponent({
    super.key,
    required this.child,
    required this.state,
  });

  @override
  FadeOverlayUiComponentState createState() => FadeOverlayUiComponentState();
}

class FadeOverlayUiComponentState extends State<FadeOverlayUiComponent> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.state.animationDuration,
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: widget.state.opacity).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(widget.state.animationDuration, () {
            _controller.reverse();
          });
        } else if (status == AnimationStatus.dismissed) {
          if (widget.state.animationState == FadeOverlayAnimationState.show) {
            widget.state.onFinishAnimation();
          }
        }
      });

    if (widget.state.animationState == FadeOverlayAnimationState.show) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant FadeOverlayUiComponent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.state.animationState == FadeOverlayAnimationState.show && oldWidget.state.animationState != FadeOverlayAnimationState.show) {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        IgnorePointer(
          child: AnimatedBuilder(
            animation: _opacityAnimation,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: Stack(
                  children: [
                    _buildBackground(),
                  ],
                ),
              );
            },
          ),
        ),
        if (widget.state.animationState == FadeOverlayAnimationState.show && widget.state.overlayContent != null)
          Center(child: widget.state.overlayContent!),
      ],
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: ShapeDecoration(
        color: widget.state.bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
