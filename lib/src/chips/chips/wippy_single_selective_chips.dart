import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_chips.dart';
import '../chip/single_selective_regular_chip.dart';
import '../chip/single_selective_large_chip.dart';

class WippySingleSelectiveChips extends StatelessWidget {
  final SingleSelectiveChipsUiState chipsUiState;
  final void Function(SingleSelectiveChipUiState) onSelected;

  const WippySingleSelectiveChips({required this.onSelected, required this.chipsUiState, super.key});

  Widget _buildSingleSelectiveRegularChips(
    BuildContext context,
    Iterable<SingleSelectiveChipUiState> chips,
  ) {
    List<Widget> chipRows = [];
    for (int i = 0; i < chips.length; i += 2) {
      final SingleSelectiveChipUiState leftChipUiState = chips.elementAt(i);
      final SingleSelectiveChipUiState? rightChipUiState = chips.elementAtOrNull(i + 1);

      if (i > 0) {
        chipRows.add(SizedBox(height: 8));
      }

      chipRows.add(Row(
        children: [
          Flexible(
            child: SingleSelectiveRegularChip(
              chipUiState: leftChipUiState,
              onPressed: () {
                onSelected(leftChipUiState);
              },
            ),
            flex: 1,
          ),
          SizedBox(width: 8.0),
          Flexible(
            child: rightChipUiState != null
                ? SingleSelectiveRegularChip(
                    chipUiState: rightChipUiState,
                    onPressed: () {
                      onSelected(rightChipUiState);
                    },
                  )
                : SizedBox(),
            flex: 1,
          ),
        ],
      ));
    }

    return Column(children: chipRows);
  }

  Widget _buildSingleSelectiveLargeChips(
    BuildContext context,
    Iterable<SingleSelectiveChipUiState> chips,
  ) {
    return Column(
      children: chips.map(
        (chipUiState) {
          return Column(
            children: [
              SingleSelectiveLargeChip(
                chipUiState: chipUiState,
                onPressed: () {
                  onSelected(chipUiState);
                },
              ),
              SizedBox(height: 8),
            ],
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (chipsUiState.sizeType) {
      case SingleSelectiveChipSizeType.large:
        return _buildSingleSelectiveLargeChips(context, chipsUiState.chips);
      case SingleSelectiveChipSizeType.regular:
        return _buildSingleSelectiveRegularChips(context, chipsUiState.chips);
    }
  }
}
