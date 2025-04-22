import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

class QdsBulletText extends StatelessWidget {
  final TextStyle? style;
  final String content;

  QdsBulletText({super.key, required this.content, this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          " ・ ",
          style: style ?? body12Medium.copyWith(color: wippyGray700),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            content,
            style: style ?? body12Medium.copyWith(color: wippyGray700),
          ),
        ),
      ],
    );
  }
}
