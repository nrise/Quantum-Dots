
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_input_error_state.freezed.dart';

@freezed
sealed class TextInputErrorState with _$TextInputErrorState {
  const factory TextInputErrorState.error({String? errorMessage}) = TextInputError;
  const factory TextInputErrorState.none() = TextInputNoneError;
}
