import 'package:flutter/material.dart';

class DotBadgeComponent extends StatelessWidget {
  static const size = 6.0;

  final Color bgColor;

  const DotBadgeComponent({
    required this.bgColor,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: ShapeDecoration(
              color: bgColor,
              shape: const OvalBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
