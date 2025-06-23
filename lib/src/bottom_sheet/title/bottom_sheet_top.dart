import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_foundation.dart';

class BottomSheetTop extends StatelessWidget {
  final Color backgroundColor;

  const BottomSheetTop({
    super.key,
    this.backgroundColor = wippyWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Container(
            height: 4,
            width: 48,
            decoration: BoxDecoration(
              color: wippyGray300,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
