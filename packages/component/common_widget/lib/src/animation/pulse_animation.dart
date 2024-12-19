import 'package:flutter/widgets.dart';

class PulseAnimation extends StatefulWidget {
  final Widget child;
  final double? startScale;
  final double? endScale;
  final Duration? duration;

  PulseAnimation({
    required this.child,
    this.startScale,
    this.endScale,
    this.duration,
  });

  @override
  PulseAnimationState createState() => PulseAnimationState();
}

class PulseAnimationState extends State<PulseAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration ?? const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: widget.startScale ?? 1,
      end: widget.endScale ?? 1.05,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: widget.child,
        );
      },
    );
  }
}
