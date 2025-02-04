import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_button.dart';

part 'empty_states_ui_state.freezed.dart';

@freezed
class EmptyStatesUiState with _$EmptyStatesUiState {
  const factory EmptyStatesUiState(
      {@Default(null) String? iconAssetName,
      @Default(null) String? title,
      @Default(null) String? description,
      @Default(null) String? buttonLabel,
      @Default(QdsBoxButtonColorType.tertiary()) QdsBoxButtonColorType buttonColorType}) = _EmptyStatesUiState;
}
