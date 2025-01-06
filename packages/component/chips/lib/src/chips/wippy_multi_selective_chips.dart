import 'package:flutter/widgets.dart';
import 'package:qds_chips/qds_chips.dart';

import '../chip/multi_selective_chip.dart';

class WippyMultiSelectiveChips extends StatelessWidget {
  final MultiSelectiveChipsUiState chipsUiState;
  final void Function(MultiSelectiveChipUiState) onSelected;

  const WippyMultiSelectiveChips({required this.onSelected, required this.chipsUiState, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: chipsUiState.chips.map((chipUiState) {
        return MultiSelectiveChip(
          chipUiState: chipUiState,
          onPressed: () {
            onSelected(chipUiState);
          },
        );
      }).toList(),
    );
  }
}
