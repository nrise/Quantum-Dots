import 'package:quantum_dots/qds_bottom_sheet.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_foundation.dart';

class BottomSheetHeader extends StatelessWidget {
  static const double _leadingAndActionsAreaSize = 80;

  final BottomSheetHeaderUiState _uiState;

  BottomSheetHeader({
    required BottomSheetHeaderUiState uiState,
  }) : _uiState = uiState;

  @override
  Widget build(BuildContext context) {
    final hasLeading = _uiState.leading != null;
    final hasActions = _uiState.actions != null;
    final description = _uiState.title.description;
    final hasLeadingAndActions = hasLeading || hasActions;

    return Container(
      width: double.infinity,
      color: wippyWhite,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (hasLeadingAndActions) ...[
                Container(
                  alignment: Alignment.centerLeft,
                  width: _leadingAndActionsAreaSize,
                  child: hasLeading
                      ? GestureDetector(
                          onTap: () {
                            _uiState.leading!.onPressed?.call();
                          },
                          child: SizedIcon(
                            size: 24,
                            asset: _uiState.leading!.assetPath,
                          ),
                        )
                      : const SizedBox(),
                ),
              ],
              Expanded(
                child: Text(
                  _uiState.title.title,
                  textAlign: TextAlign.center,
                  style: headline20Bold.copyWith(color: wippyGray900),
                ),
              ),
              if (hasLeadingAndActions) ...[
                Container(
                  alignment: Alignment.centerRight,
                  width: _leadingAndActionsAreaSize,
                  child: hasActions
                      ? TextButton(
                          onPressed: () {
                            _uiState.actions!.onPressed?.call();
                          },
                          text: _uiState.actions!.text,
                          style: headline16Bold.copyWith(color: wippyPink500),
                        )
                      : const SizedBox(),
                ),
              ],
            ],
          ),
          if (description != null) ...[
            const SizedBox(height: 12),
            Text(
              description,
              style: body14Medium.copyWith(
                color: wippyGray600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}
