import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SizedIcon extends StatelessWidget {
  late final double _size;
  late final String _asset;
  late final void Function()? _onPressed;
  late final ColorFilter? _colorFilter;

  SizedIcon({required double size, required String asset, ColorFilter? colorFilter, void Function()? onPressed}) {
    _size = size;
    _asset = asset;
    _colorFilter = colorFilter;
    _onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    final sizedIconWidget = SizedBox(
      width: _size,
      height: _size,
      child: SvgPicture.asset(
        _asset,
        colorFilter: _colorFilter,
      ),
    );
    if (_onPressed != null) {
      return GestureDetector(
        onTapUp: (_) {
          _onPressed.call();
        },
        child: sizedIconWidget,
      );
    } else {
      return sizedIconWidget;
    }
  }
}
