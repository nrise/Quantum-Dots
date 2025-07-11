import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'tooltip_ui_state.dart';

class TooltipComponent extends StatefulWidget {
  final TooltipUiState uiState;
  final Function()? onClickTooltip;

  const TooltipComponent({
    super.key,
    required this.uiState,
    this.onClickTooltip,
  });

  @override
  State<TooltipComponent> createState() => _TooltipComponentState();
}

class _TooltipComponentState extends State<TooltipComponent> {
  @override
  Widget build(BuildContext context) {
    String arrowAssetPath;
    switch (widget.uiState.placement) {
      case TooltipPlacement.downRight:
      case TooltipPlacement.downCenter:
      case TooltipPlacement.downLeft:
        arrowAssetPath = IconPath.iconDownPoint24;
      case TooltipPlacement.upRight:
      case TooltipPlacement.upCenter:
      case TooltipPlacement.upLeft:
        arrowAssetPath = IconPath.iconUpPoint24;
      case TooltipPlacement.rightCenter:
        arrowAssetPath = IconPath.iconRightPoint24;
      case TooltipPlacement.leftCenter:
        arrowAssetPath = IconPath.iconLeftPoint24;
    }

    return GestureDetector(
      onTap: widget.onClickTooltip,
      child: switch (widget.uiState.placement) {
        TooltipPlacement.downRight => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildTooltipContainer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        TooltipPlacement.downCenter => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTooltipContainer(),
              SvgPicture.asset(
                arrowAssetPath,
                colorFilter: ColorFilter.mode(
                  widget.uiState.backgroundColor,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        TooltipPlacement.downLeft => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTooltipContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        TooltipPlacement.rightCenter => Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTooltipContainer(),
              SizedBox(
                width: 6,
                height: 10,
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        TooltipPlacement.upRight => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              _buildTooltipContainer(),
            ],
          ),
        TooltipPlacement.upCenter => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
                height: 6,
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              _buildTooltipContainer(),
            ],
          ),
        TooltipPlacement.upLeft => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              _buildTooltipContainer(),
            ],
          ),
        TooltipPlacement.leftCenter => Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 6,
                height: 10,
                child: SvgPicture.asset(
                  arrowAssetPath,
                  colorFilter: ColorFilter.mode(
                    widget.uiState.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              _buildTooltipContainer(),
            ],
          ),
      },
    );
  }

  Widget _buildTooltipContainer() {
    final content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.uiState.message,
          textAlign: TextAlign.start,
          style: body14Medium.copyWith(color: widget.uiState.textColor),
          softWrap: widget.uiState.maxWidth != null,
        ),
      ],
    );

    final container = Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: widget.uiState.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: content,
    );

    return widget.uiState.maxWidth != null
        ? ConstrainedBox(
            constraints: BoxConstraints(maxWidth: widget.uiState.maxWidth!),
            child: container,
          )
        : IntrinsicWidth(child: container);
  }
}
