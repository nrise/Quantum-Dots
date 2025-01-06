import 'dart:ui';

import 'package:qds_foundation/qds_foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wippy_header_actions.freezed.dart';

@freezed
sealed class WippyHeaderActions with _$WippyHeaderActions {
  const factory WippyHeaderActions.multipleIconActions({
    required String leftIconAsset,
    required String rightIconAsset,
    @Default(null) void Function()? onPressedLeftIcon,
    @Default(wippyBlack) Color leftIconColor,
    @Default(null) void Function()? onPressedRightIcon,
    @Default(wippyBlack) Color rightIconColor,
  }) = WippyHeaderMultipleIconActions;

  const factory WippyHeaderActions.singleIconAction({
    required String iconAsset,
    @Default(null) void Function()? onPressedIcon,
    @Default(wippyBlack) Color iconColor,
  }) = WippyHeaderSingleIconActions;

  const factory WippyHeaderActions.singleTextAction({
    required String text,
    @Default(null) void Function()? onPressedText,
  }) = WippyHeaderSingleTextAction;
}
