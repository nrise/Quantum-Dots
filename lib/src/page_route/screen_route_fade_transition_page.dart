import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/src/page_route/builder/wippy_transition_page.dart';

class ScreenRouteFadeTransitionPage<T> extends WippyTransitionPage<T> {
  final Duration duration;

  const ScreenRouteFadeTransitionPage({
    super.key,
    required super.child,
    required super.name,
    this.duration = const Duration(milliseconds: 200),
  }) : super(
          transitionsBuilder: _transitionsBuilder,
          transitionDuration: duration,
          reverseTransitionDuration: duration,
          enableCupertinoTransition: false,
        );

  static Widget _transitionsBuilder(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOut,
    );

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: wippyWhite,
        ),
        FadeTransition(
          opacity: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(curvedAnimation),
          child: child,
        ),
      ],
    );
  }
}
