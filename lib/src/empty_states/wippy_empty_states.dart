import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'empty_states_ui_state.dart';

class WippyEmptyStates extends StatelessWidget {
  static const double _iconSize = 48;

  late final EmptyStatesUiState _uiState;
  late final VoidCallback? _onPressedButton;

  WippyEmptyStates({required EmptyStatesUiState uiState, VoidCallback? onPressedButton}) {
    _uiState = uiState;
    _onPressedButton = onPressedButton;
  }

  List<Widget> _buildIconAreaWidgets({required String iconAssetName}) {
    return [
      SvgPicture.asset(
        iconAssetName,
        width: _iconSize,
        height: _iconSize,
        semanticsLabel: 'empty icon',
      ),
      SizedBox(height: 16)
    ];
  }

  List<Widget> _buildContentAreaWidgets({required String? title, required String? description}) {
    return [
      if (title != null)
        Text(
          title,
          textAlign: TextAlign.center,
          style: headline16Bold.copyWith(color: wippyGray900),
          maxLines: 2,
        ),
      if (title != null && description != null) SizedBox(height: 12),
      if (description != null)
        Text(
          description,
          textAlign: TextAlign.center,
          style: body14Medium.copyWith(color: wippyGray600),
          maxLines: 3,
        )
    ];
  }

  List<Widget> _buildButtonAreaWidgets({required String buttonLabel}) {
    return [
      SizedBox(height: 24),
      Wrap(
        children: [
          WippyBoxButton(
            initUiState: ButtonUiState(
              buttonLabelType: ButtonLabelType.labelOnly(label: buttonLabel),
              buttonColorType: _uiState.buttonColorType,
              buttonSizeType: ButtonSizeType.medium(),
              onPressed: () {
                _onPressedButton?.call();
              },
            ),
          )
        ],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_uiState.iconAssetName != null) ..._buildIconAreaWidgets(iconAssetName: _uiState.iconAssetName!),
          ..._buildContentAreaWidgets(title: _uiState.title, description: _uiState.description),
          if (_uiState.buttonLabel != null) ..._buildButtonAreaWidgets(buttonLabel: _uiState.buttonLabel!)
        ],
      ),
    );
  }
}
