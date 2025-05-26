import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

class QdsGuide extends StatelessWidget {
  static final Color defaultBackgroundColor = Color(0xFFFFC266).withValues(alpha: 0.2);

  final String? emojiText;
  final String text;
  final Color? backgroundColor;

  const QdsGuide({super.key, required this.text, this.emojiText, this.backgroundColor});

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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (emojiText != null) ...[
              Text(
                emojiText!,
                style: body14Medium.copyWith(color: wippyGray900),
              ),
              const SizedBox(width: 4),
            ],
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: body14Medium.copyWith(color: wippyGray900),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
