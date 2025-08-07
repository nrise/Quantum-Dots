import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quantum_dots/src/banner/qds_banner_type.dart';

part 'qds_banner_ui_state.freezed.dart';

@freezed
class QdsBannerUiState with _$QdsBannerUiState {
  const factory QdsBannerUiState({
    required String title,
    required String description,
    required Color bgColor,
    required String iconPath,
    @Default(QdsBannerType.defaultType()) QdsBannerType bannerType,
    VoidCallback? onTap,
  }) = _QdsBannerUiState;
}
