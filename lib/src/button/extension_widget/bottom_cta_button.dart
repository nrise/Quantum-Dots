import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';

class BottomCtaButton extends StatelessWidget {
  final ButtonLabelType _labelType;
  final ButtonState _state;
  final void Function() _onPressed;

  BottomCtaButton({
    required ButtonLabelType labelType,
    required void Function() onPressed,
    ButtonState? state,
  })  : _labelType = labelType,
        _onPressed = onPressed,
        _state = state ?? ButtonState.active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: wippyWhite,
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
          child: WippyBoxButton(
            onPressed: () {
              _onPressed();
            },
            initUiState: ButtonUiState(
              buttonLabelType: _labelType,
              state: _state,
              buttonColorType: ButtonColorType.primary(),
              buttonSizeType: ButtonSizeType.large(),
            ),
          ),
        ),
      ),
    );
  }
}
