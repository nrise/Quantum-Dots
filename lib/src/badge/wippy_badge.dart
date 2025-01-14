import 'package:quantum_dots/src/badge/text_badge_component.dart';

import 'badge_type.dart';
import 'dot_badge_component.dart';
import 'n_badge_component.dart';
import 'number_badge_component.dart';
import 'package:flutter/material.dart';

class WippyBadge extends StatelessWidget {
  final BadgeType badgeType;

  const WippyBadge(this.badgeType, {super.key});
  @override
  Widget build(BuildContext context) {
    return switch (badgeType) {
      TextBadge(text: final text, bgColor: final bgColor, textColor: final textColor) =>
        TextBadgeComponent(text: text, bgColor: bgColor, textColor: textColor),
      NBadge(bgColor: final bgColor, textColor: final textColor) => NBadgeComponent(bgColor: bgColor, textColor: textColor),
      NumberBadge(number: final number, bgColor: final bgColor, textColor: final textColor) =>
        NumberBadgeComponent(number: number, bgColor: bgColor, textColor: textColor),
      DotBadge(color: final color) => DotBadgeComponent(bgColor: color),
    };
  }
}
