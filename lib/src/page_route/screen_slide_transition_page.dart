import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/src/page_route/builder/wippy_transition_page.dart';

class ScreenSlideTransitionPage<T> extends WippyTransitionPage<T> {
  const ScreenSlideTransitionPage({
    required super.child,
    required super.name,
    super.key,
    super.barrierColor = wippyWhite,
  }) : super(
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: _transitionsBuilder,
        );

  static Widget _transitionsBuilder(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOut,
    );

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.2, 0.0),
        end: Offset.zero,
      ).animate(curvedAnimation),
      child: FadeTransition(
        opacity: Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(curvedAnimation),
        child: child,
      ),
    );
  }
}
