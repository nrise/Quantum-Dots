import 'package:freezed_annotation/freezed_annotation.dart';

part 'popup_button_type.freezed.dart';

@freezed
sealed class PopupButtonType with _$PopupButtonType {
  const factory PopupButtonType.singleButton({required String label, @Default(null) void Function()? onPressed}) = SinglePopupButton;

  const factory PopupButtonType.multiButton(
      {required String leftButtonLabel,
      @Default(null) void Function()? onPressedLeftButton,
      required String rightButtonLabel,
      @Default(null) void Function()? onPressedRightButton}) = MultiPopupButton;

  const factory PopupButtonType.verticalMultiButton(
      {required String topButtonLabel,
      @Default(null) void Function()? onPressedTopButton,
      required String bottomButtonLabel,
      @Default(null) void Function()? onPressedBottomButton}) = VerticalMultiPopupButton;
}
