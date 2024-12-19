import 'package:flutter/material.dart';
import 'package:foundation/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:header/header.dart';

part 'wippy_header_ui_state.freezed.dart';

@freezed
class WippyHeaderUiState with _$WippyHeaderUiState {
  const factory WippyHeaderUiState({
    @Default(null) WippyHeaderLeading? leading,
    @Default(null) WippyHeaderTitle? title,
    @Default(null) WippyHeaderActions? actions,
    @Default(wippyWhite) Color backgroundColor,
    @Default(false) bool needToShowUnderline,
  }) = _WippyHeaderUiState;
}
