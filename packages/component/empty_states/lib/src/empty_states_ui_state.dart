import 'package:qds_button/button.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'empty_states_ui_state.freezed.dart';

@freezed
class EmptyStatesUiState with _$EmptyStatesUiState {

  const factory EmptyStatesUiState({
    @Default(null) String? iconAssetName,
    @Default(null) String? title,
    @Default(null) String? description,
    @Default(null) String? buttonLabel,
    @Default(ButtonColorType.tertiary()) ButtonColorType buttonColorType
  }) = _EmptyStatesUiState;

}
