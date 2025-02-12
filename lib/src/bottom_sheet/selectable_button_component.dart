import 'package:quantum_dots/qds_button.dart';
import 'package:flutter/material.dart';

class SelectableButtonComponent extends StatelessWidget {
  final bool leftEnable;
  final bool rightEnable;
  final String leftLabel;
  final String rightLabel;
  final Function onClickLeftButton;
  final Function onClickRightButton;

  const SelectableButtonComponent({
    required this.leftLabel,
    required this.rightLabel,
    required this.onClickLeftButton,
    required this.onClickRightButton,
    this.leftEnable = true,
    this.rightEnable = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: QdsBoxButton(
              key: Key('qds_box_button_state_left ${leftEnable ? 'enable' : 'disable'}'),
              initUiState: QdsBoxButtonUiState(
                state: leftEnable ? QdsBoxButtonState.active : QdsBoxButtonState.inactive,
                buttonSizeType: QdsBoxButtonSizeType.large(),
                buttonLabelType: QdsBoxButtonLabelType.labelOnly(
                  label: leftLabel,
                ),
                buttonColorType: const QdsBoxButtonColorType.tertiary(),
                enable: leftEnable,
              ),
              onPressed: (() => onClickLeftButton()),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: QdsBoxButton(
              key: Key('qds_box_button_state_right ${rightEnable ? 'enable' : 'disable'}'),
              initUiState: QdsBoxButtonUiState(
                state: rightEnable ? QdsBoxButtonState.active : QdsBoxButtonState.inactive,
                buttonSizeType: QdsBoxButtonSizeType.large(),
                buttonLabelType: QdsBoxButtonLabelType.labelOnly(
                  label: rightLabel,
                ),
                buttonColorType: const QdsBoxButtonColorType.primary(),
                enable: rightEnable,
              ),
              onPressed: (() => onClickRightButton()),
            ),
          ),
        ],
      ),
    );
  }
}
