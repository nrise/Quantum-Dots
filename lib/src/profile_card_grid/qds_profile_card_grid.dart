import 'package:flutter/material.dart';
import 'package:quantum_dots/src/profile_card_grid/qds_profile_card_ui_state.dart';

import '../common_widget/wippy_network_image.dart';
import '../foundation/color.dart';
import 'qds_profile_card_info_component.dart';

class QdsProfileCardGrid extends StatelessWidget {
  static const ratio = 3 / 4;
  final QdsProfileCardUiState uiState;

  const QdsProfileCardGrid({super.key, required this.uiState});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ratio,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              uiState.onTap();
            },
            child: WippyNetworkImage(
              networkImageUrl: uiState.imageUrl,
              width: double.infinity,
              height: double.infinity,
              shapeDecoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    wippyGray900.withAlpha(0),
                    wippyGray900.withAlpha(127),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            right: 12,
            child: SizedBox(
              width: double.infinity,
              child: QdsProfileCardInfoComponent(uiState: uiState),
            ),
          ),
        ],
      ),
    );
  }
}
