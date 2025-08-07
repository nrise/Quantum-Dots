import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/qds_foundation.dart';

part 'qds_banner_type.freezed.dart';

@freezed
sealed class QdsBannerType with _$QdsBannerType {
  const factory QdsBannerType.arrow({@Default(wippyGray500) Color iconColor}) = QdsBannerTypeArrow;
  const factory QdsBannerType.newType() = QdsBannerTypeNew;
  const factory QdsBannerType.defaultType() = QdsBannerTypeDefault;
}
