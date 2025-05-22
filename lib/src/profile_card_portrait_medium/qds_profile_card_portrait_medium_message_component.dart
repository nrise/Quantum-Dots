import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

class QdsProfileCardPortraitMediumMessageComponent extends StatelessWidget {
  final String title;
  final String message;
  const QdsProfileCardPortraitMediumMessageComponent({
    super.key,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 78,
      child: Column(
        children: [
          Text(title, style: body12Bold.copyWith(color: wippyWhite)),
          Text(
            message,
            style: body12Bold.copyWith(color: wippyWhite),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
