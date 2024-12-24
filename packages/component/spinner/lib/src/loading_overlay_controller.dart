import 'package:flutter/widgets.dart';
import 'package:qds_spinner/spinner.dart';

class LoadingOverlayController {
  OverlayEntry? _overlayEntry;

  void showOverlay(BuildContext context) {
    if (_overlayEntry == null) {
      _overlayEntry = WippyDimmedLoading.createLoadingOverlayEntry();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Overlay.of(context).insert(_overlayEntry!);
      });
    }
  }

  void hideOverlay() {
    if (_overlayEntry != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _overlayEntry?.remove();
        _overlayEntry = null;
      });
    }
  }
}
