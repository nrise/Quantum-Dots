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
            child: WippyBoxButton(
              enable: leftEnable,
              onPressed: (() => onClickLeftButton()),
              initUiState: ButtonUiState(
                buttonSizeType: ButtonSizeType.large(),
                buttonLabelType: ButtonLabelType.labelOnly(
                  label: leftLabel,
                ),
                buttonColorType: const ButtonColorType.tertiary(),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: WippyBoxButton(
              enable: rightEnable,
              onPressed: (() => onClickRightButton()),
              initUiState: ButtonUiState(
                state: rightEnable ? ButtonState.active : ButtonState.inactive,
                buttonSizeType: ButtonSizeType.large(),
                buttonLabelType: ButtonLabelType.labelOnly(
                  label: rightLabel,
                ),
                buttonColorType: ButtonColorType.primary(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
