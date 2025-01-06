import 'package:flutter/widgets.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonItem extends StatelessWidget {
  final double width;
  final double height;

  SkeletonItem({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: wippyGray100,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      baseColor: wippyGray150,
      highlightColor: wippyGray100,
    );
  }
}
