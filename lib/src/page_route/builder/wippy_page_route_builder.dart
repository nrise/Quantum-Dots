import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quantum_dots/src/page_route/builder/wippy_transition_page.dart';

class WippyPageRouteBuilder<T> extends PageRoute<T> {
  WippyPageRouteBuilder(WippyTransitionPage<T> page) : super(settings: page);

  WippyTransitionPage<T> get _page => settings as WippyTransitionPage<T>;

  @override
  bool get barrierDismissible => _page.barrierDismissible;

  @override
  Color? get barrierColor => _page.barrierColor;

  @override
  String? get barrierLabel => _page.barrierLabel;

  @override
  Duration get transitionDuration => _page.transitionDuration;

  @override
  Duration get reverseTransitionDuration => _page.reverseTransitionDuration;

  @override
  bool get maintainState => _page.maintainState;

  @override
  bool get fullscreenDialog => _page.fullscreenDialog;

  @override
  bool get opaque => _page.opaque;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) =>
      Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        child: _page.transitionsBuilder(context, animation, secondaryAnimation, _page.child),
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    try {
      if (Platform.isIOS) {
        return const CupertinoPageTransitionsBuilder().buildTransitions<T>(
          this,
          context,
          animation,
          secondaryAnimation,
          _page.transitionsBuilder(context, animation, secondaryAnimation, child),
        );
      } else {
        return _page.transitionsBuilder(context, animation, secondaryAnimation, child);
      }
    } catch (e) {
      return _page.transitionsBuilder(context, animation, secondaryAnimation, child);
    }
  }
}
