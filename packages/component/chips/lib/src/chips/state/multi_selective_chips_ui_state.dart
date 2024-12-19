import 'package:chips/chips.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_selective_chips_ui_state.freezed.dart';

@freezed
class MultiSelectiveChipsUiState with _$MultiSelectiveChipsUiState {
  const factory MultiSelectiveChipsUiState({
    required Iterable<MultiSelectiveChipUiState> chips,
  }) = _MultiSelectiveChipsUiState;
}
