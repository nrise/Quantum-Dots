import 'package:flutter_bloc/flutter_bloc.dart';

import 'button_cubit.dart';
import 'button_label_type.dart';
import 'button_size_type.dart';
import 'button_ui_state.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:flutter/material.dart';

@Deprecated("Use QDSBoxButton instead")
class WippyBoxButton extends StatelessWidget {
  final bool enable;
  final ButtonUiState initUiState;
  final void Function() onPressed;
  final Key? buttonKey;

  WippyBoxButton({
    required this.onPressed,
    required this.initUiState,
    this.buttonKey,
    this.enable = true,
  }) : super(key: buttonKey ?? ValueKey(initUiState));

  Widget _buildLoadingIndicator(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            color: color,
            strokeCap: StrokeCap.round,
            strokeWidth: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildIcon({
    required String iconAssetString,
    required double iconSize,
    required Color color,
  }) {
    if (iconAssetString.endsWith('.svg')) {
      return SizedIcon(
        size: iconSize,
        asset: iconAssetString,
        colorFilter: color == Colors.transparent ? null : ColorFilter.mode(color, BlendMode.srcIn),
      );
    }
    return Image.asset(
      iconAssetString,
      color: color,
    );
  }

  double _getIconAndTextSpaceWidth(ButtonSizeType buttonSizeType) {
    return buttonSizeType is Large ? 4.0 : 2.0;
  }

  double _getButtonIconSize(ButtonSizeType buttonSizeType) {
    switch (buttonSizeType) {
      case Large():
        return 24.0;
      case Medium():
        return 16.0;
      case Small():
      case XSmall():
        return 12.0;
    }
  }

  Widget _buildButtonContent(ButtonUiState uiState) {
    final buttonLabelType = uiState.buttonLabelType;

    if (uiState.state == ButtonState.loading) {
      return _buildLoadingIndicator(uiState.iconColor);
    }

    final textWidget = Flexible(
      child: Text(
        buttonLabelType.label,
        style: uiState.textStyle.copyWith(color: uiState.textColor),
        overflow: TextOverflow.ellipsis,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (buttonLabelType is LabelAndIcon && buttonLabelType.buttonDirection == ButtonDirection.left) ...[
          _buildIcon(
            iconAssetString: buttonLabelType.iconAssetString,
            iconSize: _getButtonIconSize(uiState.buttonSizeType),
            color: uiState.buttonColorType.getIconColor(uiState.state),
          ),
          SizedBox(width: _getIconAndTextSpaceWidth(uiState.buttonSizeType)),
          textWidget,
        ],
        if (buttonLabelType is LabelAndIcon && buttonLabelType.buttonDirection == ButtonDirection.right) ...[
          textWidget,
          SizedBox(width: _getIconAndTextSpaceWidth(uiState.buttonSizeType)),
          _buildIcon(
            iconAssetString: buttonLabelType.iconAssetString,
            iconSize: _getButtonIconSize(uiState.buttonSizeType),
            color: uiState.buttonColorType.getIconColor(uiState.state),
          )
        ],
        if (buttonLabelType is LabelOnly) ...[
          textWidget,
        ],
      ],
    );
  }

  Widget _buildButtonContainer(BuildContext context, ButtonUiState uiState, ButtonCubit cubit) {
    return GestureDetector(
      onTapCancel: () => cubit.onTapCancel(),
      onTapUp: (_) => cubit.onTapUp(),
      onTapDown: (_) => cubit.onTapDown(),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: uiState.verticalPaddingSize,
          horizontal: uiState.horizontalPaddingSize,
        ),
        decoration: BoxDecoration(
          color: uiState.buttonColor,
          borderRadius: BorderRadius.circular(uiState.radiusSize),
        ),
        child: _buildButtonContent(uiState),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = ButtonCubit(
      onPressed: onPressed,
      uiState: initUiState,
      enable: enable,
    );

    return BlocProvider.value(
      value: cubit,
      child: BlocBuilder<ButtonCubit, ButtonUiState>(
        builder: (context, uiState) {
          return _buildButtonContainer(context, uiState, cubit);
        },
      ),
    );
  }
}
