import 'package:flutter/material.dart';

import '../../qds_foundation.dart';
import 'qds_profile_card_portrait_medium_ui_state.dart';

class QdsProfileCardPortraitMediumTopInfoComponent extends StatelessWidget {
  const QdsProfileCardPortraitMediumTopInfoComponent({super.key, required this.uiState});

  final QdsProfileCardPortraitMediumUiState uiState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(uiState.topInfoTitle, style: body12Bold.copyWith(color: wippyWhite)),
        Text(uiState.topInfoMessage, style: body12Bold.copyWith(color: wippyWhite), maxLines: 2, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
