import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_input.dart';

class WippySolidDropDown extends StatelessWidget {
  final SolidDropDownUiState _uiState;
  final VoidCallback? _onPressed;

  const WippySolidDropDown({
    required SolidDropDownUiState uiState,
    VoidCallback? onPressed,
  })  : _uiState = uiState,
        _onPressed = onPressed;

  Widget _buildTextWidget() {
    final selectedText = _uiState.selectedText;
    if (selectedText?.isNotEmpty == true) {
      return Text(
        selectedText!,
        style: body14Medium.copyWith(color: wippyGray900),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    } else {
      final placeHolder = _uiState.placeHolder;
      if (placeHolder?.isNotEmpty == true) {
        return Text(
          placeHolder!,
          style: body14Medium.copyWith(color: wippyGray400),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          _uiState.label,
          style: body14Medium.copyWith(color: wippyGray600),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8),
        GestureDetector(
          onTap: _onPressed,
          child: Container(
            decoration: BoxDecoration(
              color: wippyGray100,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: _buildTextWidget()),
                SizedBox(width: 12),
                SizedIcon(
                  size: 16,
                  asset: IconPath.iconDown16,
                  colorFilter: ColorFilter.mode(wippyGray900, BlendMode.srcIn),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
