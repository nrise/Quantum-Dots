import 'package:flutter/widgets.dart';
import 'package:qds_foundation/qds_foundation.dart';

class BottomSheetTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: wippyWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
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
