import 'package:freezed_annotation/freezed_annotation.dart';

part 'qds_round_button_label_type.freezed.dart';

@freezed
sealed class QdsRoundButtonLabelType with _$QdsRoundButtonLabelType {
  const factory QdsRoundButtonLabelType.iconOnly({required String iconAssetString}) = QdsRoundButtonIconOnly;

  const factory QdsRoundButtonLabelType.labelAndIcon({
    required String label,
    required String iconAssetString,
    @Default(QdsRoundButtonDirection.left) QdsRoundButtonDirection buttonDirection,
  }) = QdsRoundButtonLabelAndIcon;
}

extension QdsRoundButtonLabelTypeExtension on QdsRoundButtonLabelType {
  String get label => when(
        iconOnly: (iconAssetString) => '',
        labelAndIcon: (label, _, buttonDirection) => label,
      );
}

enum QdsRoundButtonDirection {
  left,
  right,
}
