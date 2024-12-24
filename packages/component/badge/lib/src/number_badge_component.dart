import 'package:flutter/material.dart';
import 'package:qds_foundation/foundation.dart';

class NumberBadgeComponent extends StatelessWidget {
  final int number;
  final Color bgColor;
  final Color textColor;

  const NumberBadgeComponent({
    required this.number,
    required this.bgColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: ShapeDecoration(
              color: bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Container(
              constraints: const BoxConstraints(
                minWidth: 4,
              ),
              alignment: Alignment.center,
              child: Text(
                '${number > 99 ? '99+' : number}',
                style: body10Bold.copyWith(color: textColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
