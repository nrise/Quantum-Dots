import 'state/multi_selective_chip_ui_state.dart';
import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_foundation.dart';

class MultiSelectiveNormalChip extends StatelessWidget {
  static const double _verticalPaddingSize = 8.0;
  static const double _horizontalPaddingSize = 16.0;
  static const double _radiusSize = 50.0;

  final MultiSelectiveNormalChipUiState chipUiState;
  final void Function() onPressed;

  MultiSelectiveNormalChip({required this.onPressed, required this.chipUiState});

  @override
  Widget build(BuildContext context) {
    if (chipUiState.isSelected) {
      return GestureDetector(
        onTapUp: (_) {
          onPressed();
        },
        child: Container(
          decoration: BoxDecoration(color: wippyGray800, borderRadius: BorderRadius.circular(_radiusSize)),
          padding: EdgeInsets.symmetric(vertical: _verticalPaddingSize, horizontal: _horizontalPaddingSize),
          child: Text(
            chipUiState.chipUiProperties.label,
            style: body14Bold.copyWith(color: wippyWhite),
          ),
        ),
      );
    } else {
      return GestureDetector(
          onTapUp: (_) {
            onPressed();
          },
          child: Container(
            decoration: BoxDecoration(color: wippyGray150, borderRadius: BorderRadius.circular(_radiusSize)),
            padding: EdgeInsets.symmetric(vertical: _verticalPaddingSize, horizontal: _horizontalPaddingSize),
            child: Text(
              chipUiState.chipUiProperties.label,
              style: body14Bold.copyWith(color: wippyGray900),
            ),
          ));
    }
  }
}
