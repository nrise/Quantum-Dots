import 'package:chips/chips.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_selective_chips_ui_state.freezed.dart';

@freezed
class SingleSelectiveChipsUiState with _$SingleSelectiveChipsUiState {
  const factory SingleSelectiveChipsUiState({
    required Iterable<SingleSelectiveChipUiState> chips,
    @Default(SingleSelectiveChipSizeType.regular) SingleSelectiveChipSizeType sizeType,
  }) = _SingleSelectiveChipsUiState;
}
