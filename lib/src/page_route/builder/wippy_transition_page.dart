import 'package:flutter/widgets.dart';
import 'package:quantum_dots/src/page_route/builder/wippy_page_route_builder.dart';

class WippyTransitionPage<T> extends Page<T> {
  const WippyTransitionPage({
    required this.child,
    required this.transitionsBuilder,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.reverseTransitionDuration = const Duration(milliseconds: 300),
    this.maintainState = true,
    this.fullscreenDialog = false,
    this.opaque = true,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
  });

  final Widget child;

  final Duration transitionDuration;

  final Duration reverseTransitionDuration;

  final bool maintainState;

  final bool fullscreenDialog;

  final bool opaque;

  final bool barrierDismissible;

  final Color? barrierColor;

  final String? barrierLabel;

  final Widget Function(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) transitionsBuilder;

  @override
  Route<T> createRoute(BuildContext context) => WippyPageRouteBuilder<T>(this);
}
