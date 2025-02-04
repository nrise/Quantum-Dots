import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/src/page_route/builder/slide_out_page_route_builder.dart';

class ScreenSlideTransitionPage extends Page {
  final Widget child;
  final String _name;

  ScreenSlideTransitionPage({
    super.key,
    required this.child,
    required String name,
  })  : _name = name,
        super(name: name);

  @override
  String get name => _name;

  @override
  Route createRoute(BuildContext context) {
    final animationDuration = const Duration(milliseconds: 200);

    return SlideOutPageRouteBuilder(
      settings: this,
      barrierColor: wippyWhite,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionDuration: animationDuration,
      reverseTransitionDuration: animationDuration,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        );

        return Stack(
          children: [
            SlideTransition(
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
            ),
          ],
        );
      },
    );
  }
}
