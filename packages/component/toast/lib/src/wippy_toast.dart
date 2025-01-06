import 'package:flutter/material.dart';
import 'package:qds_foundation/qds_foundation.dart';

class WippyToast extends StatelessWidget {
  static const double _toastHorizontalPaddingSize = 16;
  static const double _toastRadius = 8;
  static const double _toastContentPaddingSize = 16;

  late final String _message;

  WippyToast({required String message}) {
    _message = message;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: _toastHorizontalPaddingSize),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: wippyGray800, borderRadius: BorderRadius.all(Radius.circular(_toastRadius))),
          child: Wrap(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(_toastContentPaddingSize),
                child: Text(
                  _message,
                  style: body14Bold.copyWith(color: wippyWhite),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}
