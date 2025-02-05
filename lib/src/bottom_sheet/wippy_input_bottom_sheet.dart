import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_input.dart';

import 'selectable_button_component.dart';

class WippyInputBottomSheet extends StatefulWidget {
  final String title;
  final String placeHolder;
  final String leftButtonLabel;
  final String rightButtonLabel;
  final Function onClickLeftButton;
  final Function(String) onClickRightButton;

  const WippyInputBottomSheet({
    required this.title,
    required this.placeHolder,
    required this.leftButtonLabel,
    required this.rightButtonLabel,
    required this.onClickLeftButton,
    required this.onClickRightButton,
    super.key,
  });

  @override
  WippyInputBottomSheetState createState() => WippyInputBottomSheetState();
}

class WippyInputBottomSheetState extends State<WippyInputBottomSheet> {
  String text = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 54,
                  alignment: Alignment.center,
                  child: Text(
                    widget.title,
                    style: headline20Bold.copyWith(color: wippyGray900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: QdsTextArea(
                  initialData: TextAreaInitialData(
                    placeholder: widget.placeHolder,
                    focusState: const TextInputFocusState.focusin(),
                  ),
                  onTextChanged: (uiState) {
                    debugPrint('onTextChanged ${uiState.text}');
                    setState(() {
                      text = uiState.text;
                    });
                  },
                ),
              ),
              SelectableButtonComponent(
                leftLabel: widget.leftButtonLabel,
                rightLabel: widget.rightButtonLabel,
                onClickLeftButton: () => widget.onClickLeftButton(),
                onClickRightButton: () => widget.onClickRightButton(text),
                rightEnable: text.isNotEmpty,
              ),
              const SizedBox(height: 16),
            ],
          ),
        )
      ],
    );
  }
}
