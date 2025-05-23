import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:quantum_dots/qds_foundation.dart';

class SendButton extends StatelessWidget {
  static const iconSize = 16.0;
  static const boxSize = 32.0;

  final Function onClickSend;
  final bool active;
  final bool empty;
  final String? iconPath;

  const SendButton({
    required this.onClickSend,
    required this.active,
    this.empty = false,
    this.iconPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (active) {
          onClickSend();
        }
      },
      child: Container(
        width: boxSize,
        height: boxSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active ? (empty ? wippyPink500 : wippyPink400) : wippyGray400,
        ),
        child: Center(
          child: SizedIcon(
            size: iconSize,
            asset: iconPath ?? IconPath.iconMessage16,
          ),
        ),
      ),
    );
  }
}
