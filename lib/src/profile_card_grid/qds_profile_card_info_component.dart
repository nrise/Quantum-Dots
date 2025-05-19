import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_button.dart';

import '../../qds_foundation.dart';
import '../common_widget/sized_icon.dart';
import 'qds_profile_card_ui_state.dart';

class QdsProfileCardInfoComponent extends StatelessWidget {
  const QdsProfileCardInfoComponent({super.key, required this.uiState});

  final QdsProfileCardUiState uiState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                uiState.title,
                style: body14Bold.copyWith(color: wippyWhite),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (uiState.ekycVerified) ...[
              const SizedBox(width: 2),
              SizedIcon(
                size: 16,
                asset: IconPath.iconEkycVerified,
                colorFilter: const ColorFilter.mode(wippyBlue500, BlendMode.srcIn),
              ),
            ],
          ],
        ),
        if (uiState.description != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              uiState.description!,
              maxLines: 2,
              style: body12Medium.copyWith(color: wippyWhite),
            ),
          ),
        if (uiState.dateTimePast != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              uiState.dateTimePast!,
              maxLines: 2,
              style: body12Medium.copyWith(color: wippyWhite),
            ),
          ),
        if (uiState.buttonUiState != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              width: double.infinity,
              child: QdsBoxButton(initUiState: uiState.buttonUiState!),
            ),
          ),
      ],
    );
  }
}
