import 'package:flutter/material.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qds_header/qds_header.dart';

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
