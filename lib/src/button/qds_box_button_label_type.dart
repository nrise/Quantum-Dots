import 'package:freezed_annotation/freezed_annotation.dart';

part 'qds_box_button_label_type.freezed.dart';

@freezed
sealed class QdsBoxButtonLabelType with _$QdsBoxButtonLabelType {
  const factory QdsBoxButtonLabelType.labelOnly({required String label}) =
      QdsBoxButtonLabelOnly;

  const factory QdsBoxButtonLabelType.labelAndIcon({
    required String label,
    required String iconAssetString,
    @Default(QdsBoxButtonDirection.left) QdsBoxButtonDirection buttonDirection,
  }) = QdsBoxButtonLabelAndIcon;
}

extension QdsBoxButtonLabelTypeExtension on QdsBoxButtonLabelType {
  String get label => when(
        labelOnly: (label) => label,
        labelAndIcon: (label, _, buttonDirection) => label,
      );
}

enum QdsBoxButtonDirection {
  left,
  right,
}
