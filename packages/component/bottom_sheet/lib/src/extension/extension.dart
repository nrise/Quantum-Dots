import 'package:flutter/material.dart';
import 'package:foundation/foundation.dart';

Future<T?> showWippyBottomSheet<T>({
  required BuildContext context,
  required Widget Function(BuildContext) buildBottomSheet,
  required String name,
  bool? isDismissible,
  bool? enableDrag,
  Function()? onDismissed,
}) {
  return showModalBottomSheet(
    context: context,
    routeSettings: RouteSettings(name: name),
    builder: (context) => buildBottomSheet(context),
    barrierColor: wippyBlack.withAlpha(204),
    enableDrag: enableDrag ?? true,
    isDismissible: isDismissible ?? true,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    isScrollControlled: true,
    constraints: BoxConstraints(
      minWidth: double.infinity,
      maxHeight: MediaQuery.sizeOf(context).height,
    ),
  ).then((_) {
    onDismissed?.call();
    return null;
  });
}
