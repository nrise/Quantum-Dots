import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_label_type.freezed.dart';

@freezed
sealed class ButtonLabelType with _$ButtonLabelType {
  const factory ButtonLabelType.labelOnly({required String label}) = LabelOnly;

  const factory ButtonLabelType.labelAndIcon({
    required String label,
    required String iconAssetString,
    @Default(ButtonDirection.left) buttonDirection,
  }) = LabelAndIcon;
}

extension ButtonLabelTypeExtension on ButtonLabelType {
  String get label => when(
        labelOnly: (label) => label,
        labelAndIcon: (label, _, buttonDirection) => label,
      );
}

enum ButtonDirection {
  left,
  right,
}
