import 'package:qds_chips/src/chip/multi_selective_custom_chip.dart';
import 'package:qds_chips/src/chip/state/multi_selective_chip_ui_state.dart';
import 'package:flutter/widgets.dart';

import 'multi_selective_normal_chip.dart';

class MultiSelectiveChip extends StatelessWidget {
  final MultiSelectiveChipUiState chipUiState;
  final void Function() onPressed;

  MultiSelectiveChip({required this.onPressed, required this.chipUiState});

  @override
  Widget build(BuildContext context) {
    final chipUiState = this.chipUiState;
    switch (chipUiState) {
      case MultiSelectiveNormalChipUiState():
        return MultiSelectiveNormalChip(
          onPressed: onPressed,
          chipUiState: chipUiState,
        );
      case MultiSelectiveCustomChipUiState():
        return MultiSelectiveCustomChip(
          onPressed: onPressed,
          chipUiState: chipUiState,
        );
    }
  }
}
