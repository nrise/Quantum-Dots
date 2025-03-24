import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonItem extends StatelessWidget {
  final double width;
  final double height;
  final Color baseColor;
  final Color highlightColor;

  SkeletonItem({
    required this.width,
    required this.height,
    this.baseColor = wippyGray150,
    this.highlightColor = wippyGray100,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      baseColor: baseColor,
      highlightColor: highlightColor,
    );
  }
}
