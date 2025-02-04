import 'package:flutter/material.dart';

class TabChangeFadeTransitionPage extends Page {
  final Widget child;
  final String? _name;
  final Duration duration;

  TabChangeFadeTransitionPage({
    required this.child,
    String? screenName,
    this.duration = const Duration(milliseconds: 200),
  })  : _name = screenName,
        super(key: ValueKey(child), name: screenName);

  @override
  String? get name => _name;

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        );

        return Stack(
          children: [
            FadeTransition(
              opacity: Tween<double>(
                begin: 1.0,
                end: 0.0,
              ).animate(
                CurvedAnimation(
                  parent: secondaryAnimation,
                  curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
                ),
              ),
              child: Container(color: Colors.white),
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
      },
      transitionDuration: duration,
      reverseTransitionDuration: duration,
    );
  }
}
