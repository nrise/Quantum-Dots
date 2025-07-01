import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_animation.dart';

class QdsPressableWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;

  final bool? externalIsPressed;
  final VoidCallback? onTapDown;
  final VoidCallback? onTapUp;
  final VoidCallback? onTapCancel;

  const QdsPressableWidget({
    super.key,
    required this.child,
    this.onPressed,
    this.externalIsPressed,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
  });

  @override
  State<QdsPressableWidget> createState() => _QdsPressableWidgetState();
}

class _QdsPressableWidgetState extends State<QdsPressableWidget> {
  bool _isPressed = false;

  bool get effectiveIsPressed => widget.externalIsPressed ?? _isPressed;

  void _handleTapDown() {
    if (widget.onTapDown != null) {
      widget.onTapDown!();
    } else {
      setState(() {
        _isPressed = true;
      });
    }
  }

  void _handleTapUp() {
    if (widget.onTapUp != null) {
      widget.onTapUp!();
    } else {
      setState(() {
        _isPressed = false;
      });
      widget.onPressed?.call();
    }
  }

  void _handleTapCancel() {
    if (widget.onTapCancel != null) {
      widget.onTapCancel!();
    } else {
      setState(() {
        _isPressed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _handleTapDown(),
      onTapUp: (_) => _handleTapUp(),
      onTapCancel: () => _handleTapCancel(),
      child: QdsPressScaleAnimation(
        isPressed: effectiveIsPressed,
        child: widget.child,
      ),
    );
  }
}
