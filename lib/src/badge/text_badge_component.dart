import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

class TextBadgeComponent extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const TextBadgeComponent({
    required this.text,
    required this.bgColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            style: body12Bold.copyWith(color: textColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
