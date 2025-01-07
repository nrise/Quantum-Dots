import 'package:quantum_dots/qds_chips.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_selective_chip_ui_state.freezed.dart';

@freezed
sealed class MultiSelectiveChipUiState with _$MultiSelectiveChipUiState {
  const factory MultiSelectiveChipUiState.normal({
    required bool isSelected,
    required ChipUiProperties chipUiProperties,
  }) = MultiSelectiveNormalChipUiState;

  const factory MultiSelectiveChipUiState.custom({
    required bool isSelected,
    required String iconAsset,
    required Color borderColor,
    required Color backgroundColor,
    required Color textColor,
    required ChipUiProperties chipUiProperties,
    Color? selectedTextColor,
    Color? selectedBorderColor,
    Color? selectedBackgroundColor,
  }) = MultiSelectiveCustomChipUiState;
}
