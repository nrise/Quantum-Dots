import 'package:flutter/material.dart';
import 'package:foundation/foundation.dart';

class WippyProgressBar extends StatelessWidget {

  final double _value;

  WippyProgressBar(this._value);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 8,
      backgroundColor: wippyGray200,
      color: wippyPink500,
      value: _value,
      borderRadius: BorderRadius.circular(6),
    );
  }
}
