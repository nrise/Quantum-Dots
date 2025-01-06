import 'dart:ui';

import 'package:qds_foundation/qds_foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wippy_header_leading.freezed.dart';

@freezed
class WippyHeaderLeading with _$WippyHeaderLeading {
  const factory WippyHeaderLeading({
    required String asset,
    @Default(wippyBlack) Color iconColor,
    @Default(null) void Function()? onPressed,
  }) = _WippyHeaderLeading;
}
