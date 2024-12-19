import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foundation/foundation.dart';

import 'tooltip_ui_state.dart';

class TooltipComponent extends StatelessWidget {
  final TooltipUiState uiState;

  const TooltipComponent({
    super.key,
    required this.uiState,
  });

  @override
  Widget build(BuildContext context) {
    String arrowAssetPath;
    switch (uiState.arrowPosition) {
      case TooltipArrowPosition.leftTop:
      case TooltipArrowPosition.rightTop:
        arrowAssetPath = IconPath.iconTopPoint24;
        break;
      case TooltipArrowPosition.leftBottom:
      case TooltipArrowPosition.rightBottom:
        arrowAssetPath = IconPath.iconBottomPoint24;
        break;
    }

    bool isArrowAbove = uiState.arrowPosition == TooltipArrowPosition.leftTop || uiState.arrowPosition == TooltipArrowPosition.rightTop;

    return Stack(
      children: [
        Column(
          crossAxisAlignment: (uiState.arrowPosition == TooltipArrowPosition.leftTop || uiState.arrowPosition == TooltipArrowPosition.leftBottom)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: [
            if (isArrowAbove) _buildArrow(arrowAssetPath),
            _buildTooltipContainer(),
            if (!isArrowAbove) _buildArrow(arrowAssetPath),
          ],
        ),
      ],
    );
  }

  Widget _buildArrow(String arrowAssetPath) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          uiState.arrowPosition == TooltipArrowPosition.leftTop || uiState.arrowPosition == TooltipArrowPosition.leftBottom ? uiState.arrowOffset : 0,
          0,
          uiState.arrowPosition == TooltipArrowPosition.rightTop || uiState.arrowPosition == TooltipArrowPosition.rightBottom
              ? uiState.arrowOffset
              : 0,
          0),
      child: SizedBox(
        width: 10,
        height: 6,
        child: SvgPicture.asset(arrowAssetPath),
      ),
    );
  }

  Widget _buildTooltipContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: uiState.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            uiState.message,
            textAlign: TextAlign.center,
            style: body14Medium.copyWith(color: uiState.textColor),
          ),
        ],
      ),
    );
  }
}
