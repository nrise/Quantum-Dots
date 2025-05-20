import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

class QdsGuide extends StatelessWidget {
  static final Color defaultBackgroundColor = Color(0xFFFFC266).withValues(alpha: 0.2);

  final String text;
  final Color? backgroundColor;

  const QdsGuide({super.key, required this.text, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: backgroundColor ?? defaultBackgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: body14Medium.copyWith(color: wippyGray900),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
