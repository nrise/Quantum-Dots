import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_button.dart';

import '../common_widget/image_slide_widget.dart';
import '../foundation/color.dart';
import 'qds_profile_card_portrait_info_component.dart';
import 'qds_profile_card_portrait_ui_state.dart';

class QdsProfileCardPortrait extends StatelessWidget {
  final QdsProfileCardPortraitUiState uiState;

  const QdsProfileCardPortrait({super.key, required this.uiState});

  @override
  Widget build(BuildContext context) {
    final cardHeight = uiState.cardWidth / uiState.cardRatio;

    return SizedBox(
      width: uiState.cardWidth,
      height: cardHeight,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ImageSlideWidget(
              imageUrlList: uiState.imageUrlList,
              currentIndex: 0,
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
            bottom: 80,
            left: 16,
            child: QdsProfileCardPortraitInfoComponent(uiState: uiState),
          ),
          Positioned(
            bottom: 12,
            left: 16,
            right: 16,
            child: SizedBox(
              width: double.infinity,
              child: QdsBoxButton(
                initUiState: QdsBoxButtonUiState(
                  buttonLabelType: uiState.bottomButtonLabelType,
                  buttonColorType: uiState.bottomButtonColorType,
                  buttonSizeType: QdsBoxButtonSizeType.large(),
                ),
                onPressed: uiState.onClickBottomButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
