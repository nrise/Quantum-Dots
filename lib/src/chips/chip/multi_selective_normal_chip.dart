import 'state/multi_selective_chip_ui_state.dart';
import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_animation.dart';

class MultiSelectiveNormalChip extends StatelessWidget {
  static const double _verticalPaddingSize = 8.0;
  static const double _horizontalPaddingSize = 16.0;
  static const double _radiusSize = 50.0;

  final MultiSelectiveNormalChipUiState chipUiState;
  final void Function() onPressed;

  MultiSelectiveNormalChip({required this.onPressed, required this.chipUiState});

  @override
  Widget build(BuildContext context) {
    Widget chipContent;

    if (chipUiState.isSelected) {
      chipContent = Container(
        decoration: BoxDecoration(color: wippyGray800, borderRadius: BorderRadius.circular(_radiusSize)),
        padding: EdgeInsets.symmetric(vertical: _verticalPaddingSize, horizontal: _horizontalPaddingSize),
        child: Text(
          chipUiState.chipUiProperties.label,
          style: body14Bold.copyWith(color: wippyWhite),
        ),
      );
    } else {
      chipContent = Container(
        decoration: BoxDecoration(color: wippyGray150, borderRadius: BorderRadius.circular(_radiusSize)),
        padding: EdgeInsets.symmetric(vertical: _verticalPaddingSize, horizontal: _horizontalPaddingSize),
        child: Text(
          chipUiState.chipUiProperties.label,
          style: body14Bold.copyWith(color: wippyGray900),
        ),
      );
    }

    return QdsPressableWidget(
      onPressed: onPressed,
      child: chipContent,
    );
  }
}
