import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qds_chips/qds_chips.dart';

part 'multi_selective_chips_ui_state.freezed.dart';

@freezed
class MultiSelectiveChipsUiState with _$MultiSelectiveChipsUiState {
  const factory MultiSelectiveChipsUiState({
    required Iterable<MultiSelectiveChipUiState> chips,
  }) = _MultiSelectiveChipsUiState;
}
