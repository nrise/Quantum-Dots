import 'package:freezed_annotation/freezed_annotation.dart';

part 'chip_ui_properties.freezed.dart';

@freezed
class ChipUiProperties with _$ChipUiProperties {
  const factory ChipUiProperties({
    @Default(null) String? uniqueKey,
    required String label,
  }) = _ChipUiProperties;
}
