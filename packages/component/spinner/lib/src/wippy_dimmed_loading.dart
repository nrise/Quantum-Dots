import 'package:flutter/cupertino.dart';
import 'package:foundation/foundation.dart';
import 'package:spinner/spinner.dart';

class WippyDimmedLoading extends StatelessWidget {
  static OverlayEntry createLoadingOverlayEntry() {
    return OverlayEntry(
      builder: (context) => WippyDimmedLoading(),
    );
  }

  final bool isBackable;

  const WippyDimmedLoading({super.key, this.isBackable = true});

  @override
  Widget build(BuildContext context) {
    final loadingWidget = Container(
      width: double.infinity,
      height: double.infinity,
      color: wippyWhite.withAlpha(127),
      alignment: Alignment.center,
      child: WippySpinner(),
    );

    if (isBackable) {
      return loadingWidget;
    } else {
      return BackButtonListener(
        child: loadingWidget,
        onBackButtonPressed: () async {
          return true;
        },
      );
    }
  }
}
