import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';

class BottomCtaButton extends StatelessWidget {
  final QdsBoxButtonLabelType _labelType;
  final QdsBoxButtonState _state;
  final void Function() _onPressed;

  BottomCtaButton({
    required QdsBoxButtonLabelType labelType,
    required void Function() onPressed,
    QdsBoxButtonState? state,
  })  : _labelType = labelType,
        _onPressed = onPressed,
        _state = state ?? QdsBoxButtonState.active;

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
          child: QdsBoxButton(
            key: Key("bottom_cta_button $_state"),
            onPressed: () {
              _onPressed();
            },
            initUiState: QdsBoxButtonUiState(
              buttonLabelType: _labelType,
              state: _state,
              buttonColorType: QdsBoxButtonColorType.primary(),
              buttonSizeType: QdsBoxButtonSizeType.large(),
            ),
          ),
        ),
      ),
    );
  }
}
