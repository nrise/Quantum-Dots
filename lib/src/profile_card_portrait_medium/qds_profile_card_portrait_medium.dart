import 'package:flutter/material.dart';

import '../common_widget/wippy_network_image.dart';
import '../foundation/color.dart';
import 'qds_profile_card_portrait_medium_bottom_info_component.dart';
import 'qds_profile_card_portrait_medium_top_info_component.dart';
import 'qds_profile_card_portrait_medium_ui_state.dart';

class QdsProfileCardPortraitMedium extends StatelessWidget {
  static const ratio = 3 / 4;
  final QdsProfileCardPortraitMediumUiState uiState;

  const QdsProfileCardPortraitMedium({super.key, required this.uiState});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ratio,
      child: Stack(
        children: [
          WippyNetworkImage(
            networkImageUrl: uiState.imageUrl,
            width: double.infinity,
            height: double.infinity,
            isBlurred: uiState.needBlur,
            shapeDecoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          if (!uiState.needBlur) ...[
            IgnorePointer(
              child: Container(
                height: 78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      wippyBlue500.withAlpha(240),
                      wippyBlue500.withAlpha(0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              right: 12,
              child: QdsProfileCardPortraitMediumTopInfoComponent(uiState: uiState),
            ),
          ],
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
              child: QdsProfileCardPortraitMediumBottomInfoComponent(uiState: uiState),
            ),
          ),
        ],
      ),
    );
  }
}
