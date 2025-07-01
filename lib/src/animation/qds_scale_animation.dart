import 'package:flutter/material.dart';

const qdsScaleAnimationDuration = Duration(milliseconds: 100);
const qdsScaleCurve = Curves.easeInOut;
const qdsScaleAnimationScaleSize = 0.98;

class QdsPressScaleAnimation extends StatelessWidget {
  final bool isPressed;
  final Widget child;

  const QdsPressScaleAnimation({super.key, required this.isPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: isPressed ? qdsScaleAnimationScaleSize : 1.0,
      duration: qdsScaleAnimationDuration,
      curve: qdsScaleCurve,
      child: child,
    );
  }
}
