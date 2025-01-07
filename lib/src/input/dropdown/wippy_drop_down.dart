import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'drop_down_ui_state.dart';

class WippyDropDown extends StatelessWidget {
  static const double _underlineWidth = 2;

  final DropDownUiState _uiState;
  final VoidCallback? _onPressed;

  const WippyDropDown({required DropDownUiState uiState, VoidCallback? onPressed})
      : _uiState = uiState,
        _onPressed = onPressed;

  Widget _buildTextWidget() {
    final selectedText = _uiState.selectedText;
    if (selectedText?.isNotEmpty == true) {
      if (_uiState.enabled) {
        return Text(
          selectedText!,
          textAlign: TextAlign.start,
          style: headline20Bold.copyWith(color: wippyGray900),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
      } else {
        return Text(
          selectedText!,
          textAlign: TextAlign.start,
          style: headline20Bold.copyWith(color: wippyGray500),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
      }
    } else {
      final placeHolder = _uiState.placeHolder;
      if (placeHolder?.isNotEmpty == true) {
        return Text(
          placeHolder!,
          textAlign: TextAlign.start,
          style: headline20Bold.copyWith(color: wippyGray400),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
      }
    }
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        GestureDetector(
          onTapUp: (_) {
            if (_uiState.enabled) {
              _onPressed?.call();
            }
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _uiState.label,
                style: body14Medium.copyWith(color: wippyGray600),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: _buildTextWidget(),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SizedIcon(
                    size: 16,
                    asset: IconPath.iconDown16,
                    colorFilter: ColorFilter.mode(wippyGray600, BlendMode.srcIn),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(height: _underlineWidth, color: wippyGray300),
            ],
          ),
        ),
      ],
    );
  }
}
