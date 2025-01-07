import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_chips.dart';

part 'single_selective_chips_ui_state.freezed.dart';

@freezed
class SingleSelectiveChipsUiState with _$SingleSelectiveChipsUiState {
  const factory SingleSelectiveChipsUiState({
    required Iterable<SingleSelectiveChipUiState> chips,
    @Default(SingleSelectiveChipSizeType.regular) SingleSelectiveChipSizeType sizeType,
  }) = _SingleSelectiveChipsUiState;
}
