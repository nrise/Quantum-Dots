import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quantum_dots/qds_foundation.dart';

class WippyNetworkImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String networkImageUrl;
  final ShapeDecoration? shapeDecoration;
  final BoxFit fit;
  final Widget? placeHolderWidget;
  final Widget? errorWidget;
  final Duration fadeInDuration;
  final Duration placeholderFadeInDuration;
  final Color backgroundColor;

  const WippyNetworkImage({
    required this.networkImageUrl,
    this.width,
    this.height,
    this.shapeDecoration,
    this.fit = BoxFit.cover,
    this.placeHolderWidget,
    this.errorWidget,
    this.fadeInDuration = const Duration(milliseconds: 50),
    this.placeholderFadeInDuration = const Duration(milliseconds: 50),
    this.backgroundColor = wippyGray100,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: shapeDecoration,
      child: ClipPath(
        clipper: shapeDecoration != null ? ShapeBorderClipper(shape: shapeDecoration!.shape) : null,
        child: Container(
          color: backgroundColor,
          child: networkImageUrl.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: networkImageUrl,
                  fit: fit,
                  fadeInDuration: fadeInDuration,
                  fadeInCurve: Curves.easeInOut,
                  progressIndicatorBuilder: (context, url, progress) {
                    return AnimatedSwitcher(
                      duration: placeholderFadeInDuration,
                      child: _buildPlaceholder(),
                    );
                  },
                  errorWidget: (context, url, error) {
                    return AnimatedSwitcher(
                      duration: placeholderFadeInDuration,
                      child: _buildErrorWidget(),
                    );
                  },
                  errorListener: (error) {
                    debugPrint('errorListener: $error for $networkImageUrl');
                  },
                )
              : AnimatedSwitcher(
                  duration: placeholderFadeInDuration,
                  child: _buildErrorWidget(),
                ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return placeHolderWidget ??
        Center(
          child: SvgPicture.asset(
            IconPath.iconWippyPlaceholder,
            fit: BoxFit.contain,
          ),
        );
  }

  Widget _buildErrorWidget() {
    return errorWidget ??
        Center(
          child: SvgPicture.asset(
            IconPath.iconWippyPlaceholder,
            fit: BoxFit.contain,
          ),
        );
  }
}
