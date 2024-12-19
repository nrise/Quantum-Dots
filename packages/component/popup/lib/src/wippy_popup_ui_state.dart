import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:popup/src/type/popup_button_type.dart';
import 'package:popup/src/type/popup_image_type.dart';

part 'wippy_popup_ui_state.freezed.dart';

@freezed
class WippyPopupUiState with _$WippyPopupUiState {
  const factory WippyPopupUiState({
    required String title,
    @Default(null) PopupImageType? popupImageType,
    @Default(null) String? description,
    @Default(null) PopupButtonType? popupButtonType,
  }) = _WippyPopupUiState;
}
