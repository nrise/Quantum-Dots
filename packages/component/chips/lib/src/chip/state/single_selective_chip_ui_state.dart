import 'package:qds_chips/chips.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_selective_chip_ui_state.freezed.dart';

@freezed
class SingleSelectiveChipUiState with _$SingleSelectiveChipUiState {
  const factory SingleSelectiveChipUiState({
    required bool isSelected,
    required ChipUiProperties chipUiProperties,
    @Default(null) String? iconAssetString,
  }) = _SingleSelectiveChipUiState;
}
