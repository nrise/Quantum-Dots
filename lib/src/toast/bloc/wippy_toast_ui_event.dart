import 'package:freezed_annotation/freezed_annotation.dart';

part 'wippy_toast_ui_event.freezed.dart';

@freezed
sealed class WippyToastUiEvent with _$WippyToastUiEvent {
  const factory WippyToastUiEvent.show({
    required String message,
    required String? messageKey,
    @Default(true) bool isCancelableMessage,
  }) = ShowWippyToastUiEvent;

  const factory WippyToastUiEvent.endedVisibleAnimation() = EndedVisibleAnimationToastUiEvent;

  const factory WippyToastUiEvent.endedInvisibleAnimation() = EndedInvisibleAnimationToastUiEvent;
}
