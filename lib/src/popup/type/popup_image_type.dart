import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popup_image_type.freezed.dart';

@freezed
sealed class PopupImageType with _$PopupImageType {
  const factory PopupImageType.network({
    required String imageUrl,
    @Default(false) bool isCircle,
    @Default(double.infinity) double width,
    @Default(null) double? height,
    BoxFit? boxFit,
  }) = NetworkPopupImage;

  const factory PopupImageType.asset({required String assetName}) = AssetPopupImage;

  const factory PopupImageType.localImage({
    required String imagePath,
    required double width,
    required double height,
  }) = LocalImagePopupImage;
}
