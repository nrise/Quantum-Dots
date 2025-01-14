import 'package:freezed_annotation/freezed_annotation.dart';

part 'wippy_header_title.freezed.dart';

@freezed
class WippyHeaderTitle with _$WippyHeaderTitle {
  const factory WippyHeaderTitle({
    required String text,
    @Default(null) void Function()? onPressedProfileImage,
    @Default(null) String? profileImageUrl,
    @Default(null) String? errorPlaceHolder,
    @Default(null) String? placeHolder,
  }) = _WippyHeaderTitle;
}
