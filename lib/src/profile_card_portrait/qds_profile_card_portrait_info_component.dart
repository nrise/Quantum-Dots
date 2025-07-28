import 'package:flutter/material.dart';
import 'package:quantum_dots/src/foundation/color.dart';
import 'package:quantum_dots/src/foundation/font.dart';

import '../common_widget/sized_icon.dart';
import '../foundation/icon_path.dart';
import 'qds_profile_card_portrait_ui_state.dart';

class QdsProfileCardPortraitInfoComponent extends StatelessWidget {
  final QdsProfileCardPortraitUiState uiState;
  const QdsProfileCardPortraitInfoComponent({super.key, required this.uiState});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(uiState.nicknameWithAge, style: headline24Bold.copyWith(color: wippyWhite)),
            if (uiState.ekycVerified) ...[
              const SizedBox(width: 4),
              SizedIcon(
                size: 16,
                asset: IconPath.iconEkycVerified,
                colorFilter: const ColorFilter.mode(wippyBlue500, BlendMode.srcIn),
              ),
            ],
          ],
        ),
        if (uiState.contextMessage != null) ...[
          const SizedBox(height: 6),
          Text(uiState.contextMessage!, style: body14Bold.copyWith(color: wippyWhite)),
        ],
        if (uiState.workplaceAddress != null) ...[
          const SizedBox(height: 6),
          Text(uiState.workplaceAddress!, style: body12Medium.copyWith(color: wippyWhite)),
        ],
      ],
    );
  }
}
