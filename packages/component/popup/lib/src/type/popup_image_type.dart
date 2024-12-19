import 'package:freezed_annotation/freezed_annotation.dart';

part 'popup_image_type.freezed.dart';

@freezed
sealed class PopupImageType with _$PopupImageType {
  const factory PopupImageType.network({required String imageUrl}) =
      NetworkPopupImage;

  const factory PopupImageType.asset({required String assetName}) = AssetPopupImage;
}
