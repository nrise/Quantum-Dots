import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_common_widget.dart';

class QdsBoxButton extends StatelessWidget {
  final QdsBoxButtonUiState initUiState;
  final void Function()? onPressed;

  const QdsBoxButton({
    required this.initUiState,
    this.onPressed,
    super.key,
  });

  Widget _buildLoadingIndicator(Color color, QdsBoxButtonSizeType buttonSizeType) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: _getLoadingIndicatorSize(buttonSizeType),
          height: _getLoadingIndicatorSize(buttonSizeType),
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

  double _getIconAndTextSpaceWidth(QdsBoxButtonSizeType buttonSizeType) {
    return buttonSizeType is QdsBoxButtonLarge ? 4.0 : 2.0;
  }

  double _getButtonIconSize(QdsBoxButtonSizeType buttonSizeType) {
    switch (buttonSizeType) {
      case QdsBoxButtonLarge():
        return 24.0;
      case QdsBoxButtonMedium():
        return 16.0;
      case QdsBoxButtonSmall():
      case QdsBoxButtonXSmall():
        return 12.0;
    }
  }

  double _getLoadingIndicatorSize(QdsBoxButtonSizeType buttonSizeType) {
    switch (buttonSizeType) {
      case QdsBoxButtonLarge():
      case QdsBoxButtonMedium():
        return 24.0;
      case QdsBoxButtonSmall():
      case QdsBoxButtonXSmall():
        return 16.0;
    }
  }

  Widget _buildButtonContent(QdsBoxButtonUiState uiState) {
    final buttonLabelType = uiState.buttonLabelType;

    if (uiState.state is QdsBoxButtonLoading) {
      return _buildLoadingIndicator(uiState.iconColor, uiState.buttonSizeType);
    }

    final textWidget = Flexible(
      child: Text(
        buttonLabelType.label,
        style: uiState.textStyle.copyWith(color: uiState.textColor),
        overflow: TextOverflow.ellipsis,
      ),
    );

    if (uiState.state is QdsBoxButtonProgress && (uiState.state as QdsBoxButtonProgress).needLoading) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLoadingIndicator(uiState.iconColor, uiState.buttonSizeType),
          SizedBox(width: 2),
          SizedBox(width: _getIconAndTextSpaceWidth(uiState.buttonSizeType)),
          textWidget,
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (buttonLabelType is QdsBoxButtonLabelAndIcon && buttonLabelType.buttonDirection == QdsBoxButtonDirection.left) ...[
          _buildIcon(
            iconAssetString: buttonLabelType.iconAssetString,
            iconSize: _getButtonIconSize(uiState.buttonSizeType),
            color: uiState.buttonColorType.getIconColor(uiState.state),
          ),
          SizedBox(width: _getIconAndTextSpaceWidth(uiState.buttonSizeType)),
          textWidget,
        ],
        if (buttonLabelType is QdsBoxButtonLabelAndIcon && buttonLabelType.buttonDirection == QdsBoxButtonDirection.right) ...[
          textWidget,
          SizedBox(width: _getIconAndTextSpaceWidth(uiState.buttonSizeType)),
          _buildIcon(
            iconAssetString: buttonLabelType.iconAssetString,
            iconSize: _getButtonIconSize(uiState.buttonSizeType),
            color: uiState.buttonColorType.getIconColor(uiState.state),
          )
        ],
        if (buttonLabelType is QdsBoxButtonLabelOnly) ...[
          textWidget,
        ],
      ],
    );
  }

  Widget _buildButtonContainer(BuildContext context, QdsBoxButtonUiState uiState, QdsBoxButtonCubit cubit) {
    return GestureDetector(
      onTapCancel: () => cubit.onTapCancel(),
      onTapUp: (_) => cubit.onTapUp(),
      onTapDown: (_) => cubit.onTapDown(),
      child: Container(
        decoration: BoxDecoration(
          color: uiState.buttonColor,
          borderRadius: BorderRadius.circular(uiState.radiusSize),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (uiState.state is QdsBoxButtonProgress) ...[
              Positioned.fill(
                child: TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  tween: Tween<double>(
                    begin: 0,
                    end: (uiState.state as QdsBoxButtonProgress).progress,
                  ),
                  builder: (context, animatedProgress, child) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(uiState.radiusSize),
                      child: FractionallySizedBox(
                        widthFactor: animatedProgress,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          color: uiState.buttonColorType.getProgressColor(uiState.state),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: uiState.verticalPaddingSize,
                horizontal: uiState.horizontalPaddingSize,
              ),
              child: _buildButtonContent(uiState),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = QdsBoxButtonCubit(
      uiState: initUiState,
      onPressed: onPressed,
    );

    return BlocProvider.value(
      value: cubit,
      child: BlocBuilder<QdsBoxButtonCubit, QdsBoxButtonUiState>(
        builder: (context, uiState) {
          return _buildButtonContainer(context, uiState, cubit);
        },
      ),
    );
  }
}
