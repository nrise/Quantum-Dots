import 'package:flutter/widgets.dart';

class TextButton extends StatelessWidget {
  final VoidCallback _onPressed;
  final String _text;
  final TextStyle _style;

  const TextButton({
    required VoidCallback onPressed,
    required String text,
    required TextStyle style,
  })  : _onPressed = onPressed,
        _text = text,
        _style = style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        _onPressed();
      },
      child: Text(
        _text,
        style: _style,
      ),
    );
  }
}
