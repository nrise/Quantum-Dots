import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_button.dart';

import '../../qds_foundation.dart';
import '../common_widget/sized_icon.dart';
import 'qds_profile_card_portrait_medium_ui_state.dart';

class QdsProfileCardPortraitMediumBottomInfoComponent extends StatelessWidget {
  const QdsProfileCardPortraitMediumBottomInfoComponent({super.key, required this.uiState});

  final QdsProfileCardPortraitMediumUiState uiState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                uiState.nicknameWithAge,
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
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            uiState.dateTimeLeft,
            maxLines: 2,
            style: body12Medium.copyWith(color: wippyWhite),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: QdsBoxButton(
                  initUiState: QdsBoxButtonUiState(
                    buttonLabelType: uiState.leftButtonLabelType,
                    buttonColorType: uiState.needBlur ? QdsBoxButtonColorType.tertiary() : uiState.leftButtonColorType,
                    buttonSizeType: QdsBoxButtonSizeType.small(),
                    enable: uiState.needBlur ? false : uiState.leftButtonEnabled,
                  ),
                  onPressed: uiState.onClickLeftButton,
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: QdsBoxButton(
                  initUiState: QdsBoxButtonUiState(
                    buttonLabelType: uiState.rightButtonLabelType,
                    buttonColorType: uiState.needBlur ? QdsBoxButtonColorType.tertiary() : uiState.rightButtonColorType,
                    buttonSizeType: QdsBoxButtonSizeType.small(),
                    enable: uiState.needBlur ? false : uiState.rightButtonEnabled,
                  ),
                  onPressed: uiState.onClickRightButton,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
