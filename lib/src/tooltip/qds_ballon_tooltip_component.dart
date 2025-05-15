import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_tooltip.dart';

class QdsBalloonTooltipComponent extends StatefulWidget {
  final Widget child;
  final TooltipUiState uiState;
  final bool isVisible;
  final VoidCallback? onTooltipTap;
  final Duration? visibleDuration;
  final double? offset;

  const QdsBalloonTooltipComponent({
    super.key,
    required this.child,
    required this.uiState,
    this.isVisible = false,
    this.onTooltipTap,
    this.visibleDuration,
    this.offset,
  });

  @override
  State<QdsBalloonTooltipComponent> createState() => QdsBalloonTooltipComponentState();
}

class QdsBalloonTooltipComponentState extends State<QdsBalloonTooltipComponent> with WidgetsBindingObserver {
  static const Duration _defaultVisibleDuration = Duration(milliseconds: 50);
  static const double _defaultOffset = 4;

  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _childKey = GlobalKey();
  bool _isVisible = false;
  bool _isInViewport = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _isVisible = widget.isVisible;

    if (_isVisible) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showTooltipIfNeeded();
      });
    }

    _startVisibilityCheck();
  }

  @override
  void didUpdateWidget(QdsBalloonTooltipComponent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isVisible != oldWidget.isVisible) {
      _isVisible = widget.isVisible;
      if (_isVisible) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _showTooltipIfNeeded();
        });
      } else {
        removeTooltip();
      }
    }
  }

  @override
  void dispose() {
    removeTooltip();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    _checkVisibility();
  }

  void _startVisibilityCheck() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _checkVisibility();
        _startVisibilityCheck();
      }
    });
  }

  void _checkVisibility() {
    if (!mounted || _childKey.currentContext == null) {
      return;
    }

    try {
      final RenderBox? renderBox = _childKey.currentContext?.findRenderObject() as RenderBox?;
      if (renderBox == null || !renderBox.attached) {
        return;
      }

      final position = renderBox.localToGlobal(Offset.zero);
      final size = renderBox.size;
      final screenSize = MediaQuery.of(context).size;
      final screenHeight = screenSize.height;
      final screenWidth = screenSize.width;

      final bool isCurrentlyInViewport =
          position.dx < screenWidth && position.dx + size.width > 0 && position.dy < screenHeight && position.dy + size.height > 0;

      if (isCurrentlyInViewport != _isInViewport) {
        _isInViewport = isCurrentlyInViewport;

        if (!_isInViewport) {
          removeTooltip();
        } else if (_isVisible) {
          _showTooltipIfNeeded();
        }
      }
    } catch (e) {
      debugPrint('Visibility check error: $e');
    }
  }

  void _showTooltipIfNeeded() {
    if (!mounted || !_isInViewport || !_isVisible) return;

    Future.delayed(
      widget.visibleDuration ?? _defaultVisibleDuration,
      () {
        if (mounted && _isVisible && _isInViewport) {
          showTooltip();
        }
      },
    );
  }

  void showTooltip() {
    if (!mounted) return;

    removeTooltip();

    try {
      final offset = _getOffsetForPlacement();
      _overlayEntry = OverlayEntry(
        builder: (context) {
          return CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: offset,
            child: Material(
              color: Colors.transparent,
              child: TooltipComponent(
                uiState: widget.uiState,
                onClickTooltip: widget.onTooltipTap,
              ),
            ),
          );
        },
      );

      if (_overlayEntry != null) {
        final overlay = Overlay.of(context, rootOverlay: true);
        overlay.insert(_overlayEntry!);
      }
    } catch (e) {
      debugPrint('Failed to show tooltip: $e');
    }
  }

  void removeTooltip() {
    try {
      _overlayEntry?.remove();
    } catch (e) {
      debugPrint('Error removing overlay: $e');
    } finally {
      _overlayEntry = null;
    }
  }

  Offset _getOffsetForPlacement() {
    final RenderBox? renderBox = _childKey.currentContext?.findRenderObject() as RenderBox?;

    if (renderBox == null) {
      return Offset.zero;
    }

    final size = renderBox.size;

    switch (widget.uiState.placement) {
      case TooltipPlacement.upCenter:
      case TooltipPlacement.upLeft:
      case TooltipPlacement.upRight:
        return Offset(0, size.height + (widget.offset ?? _defaultOffset));
      case TooltipPlacement.downCenter:
      case TooltipPlacement.downLeft:
      case TooltipPlacement.downRight:
        return Offset(0, -(widget.offset ?? _defaultOffset));
      case TooltipPlacement.leftCenter:
        return Offset(size.width + (widget.offset ?? _defaultOffset), 0);
      case TooltipPlacement.rightCenter:
        return Offset(-(widget.offset ?? _defaultOffset), 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        key: _childKey,
        child: widget.child,
      ),
    );
  }
}
