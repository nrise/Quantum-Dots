import 'package:freezed_annotation/freezed_annotation.dart';

part 'qds_round_button_label_type.freezed.dart';

@freezed
sealed class QdsRoundButtonLabelType with _$QdsRoundButtonLabelType {
  const factory QdsRoundButtonLabelType.labelOnly({required String label}) = QdsRoundButtonLabelOnly;

  const factory QdsRoundButtonLabelType.iconOnly({
    required String iconAssetString,
    @Default(true) bool enableIconColorFilter,
  }) = QdsRoundButtonIconOnly;

  const factory QdsRoundButtonLabelType.labelAndIcon({
    required String label,
    required String iconAssetString,
    @Default(true) bool enableIconColorFilter,
    @Default(QdsRoundButtonDirection.left) QdsRoundButtonDirection buttonDirection,
  }) = QdsRoundButtonLabelAndIcon;
}

extension QdsRoundButtonLabelTypeExtension on QdsRoundButtonLabelType {
  String get label => when(
        labelOnly: (label) => label,
        iconOnly: (iconAssetString, enableIconColorFilter) => '',
        labelAndIcon: (label, iconAssetString, enableIconColorFilter, buttonDirection) => label,
      );
}

enum QdsRoundButtonDirection {
  left,
  right,
}
