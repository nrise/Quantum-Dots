import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'tooltip_ui_state.dart';

class TooltipComponent extends StatefulWidget {
  final TooltipUiState uiState;
  final Function() onVisibilityChanged;

  const TooltipComponent({
    super.key,
    required this.uiState,
    required this.onVisibilityChanged,
  });

  @override
  State<TooltipComponent> createState() => _TooltipComponentState();
}

class _TooltipComponentState extends State<TooltipComponent> {
  @override
  Widget build(BuildContext context) {
    String arrowAssetPath;
    switch (widget.uiState.arrowPosition) {
      case TooltipArrowPosition.leftTop:
      case TooltipArrowPosition.rightTop:
        arrowAssetPath = IconPath.iconTopPoint24;
        break;
      case TooltipArrowPosition.leftBottom:
      case TooltipArrowPosition.rightBottom:
        arrowAssetPath = IconPath.iconBottomPoint24;
        break;
    }

    bool isArrowAbove = widget.uiState.arrowPosition == TooltipArrowPosition.leftTop || widget.uiState.arrowPosition == TooltipArrowPosition.rightTop;

    return widget.uiState.visible
        ? Stack(
            children: [
              Column(
                crossAxisAlignment:
                    (widget.uiState.arrowPosition == TooltipArrowPosition.leftTop || widget.uiState.arrowPosition == TooltipArrowPosition.leftBottom)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                children: [
                  if (isArrowAbove) _buildArrow(arrowAssetPath),
                  _buildTooltipContainer(),
                  if (!isArrowAbove) _buildArrow(arrowAssetPath),
                ],
              ),
            ],
          )
        : const SizedBox.shrink();
  }

  Widget _buildArrow(String arrowAssetPath) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          widget.uiState.arrowPosition == TooltipArrowPosition.leftTop || widget.uiState.arrowPosition == TooltipArrowPosition.leftBottom
              ? widget.uiState.arrowOffset
              : 0,
          0,
          widget.uiState.arrowPosition == TooltipArrowPosition.rightTop || widget.uiState.arrowPosition == TooltipArrowPosition.rightBottom
              ? widget.uiState.arrowOffset
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
        color: widget.uiState.backgroundColor,
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
            widget.uiState.message,
            textAlign: TextAlign.center,
            style: body14Medium.copyWith(color: widget.uiState.textColor),
          ),
        ],
      ),
    );
  }
}
