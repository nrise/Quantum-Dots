import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_widget/sized_icon.dart';
import '../qds_box_button_state.dart';
import 'qds_round_button_cubit.dart';
import 'qds_round_button_label_type.dart';
import 'qds_round_button_ui_state.dart';

class QdsRoundButton extends StatelessWidget {
  final QdsRoundButtonUiState initUiState;
  final void Function()? onPressed;

  const QdsRoundButton({
    required this.initUiState,
    this.onPressed,
    super.key,
  });

  Widget _buildLoadingIndicator(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: initUiState.iconSize,
          height: initUiState.iconSize,
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

  Widget _buildButtonContent(QdsRoundButtonUiState uiState) {
    final buttonLabelType = uiState.buttonLabelType;

    if (uiState.state is QdsBoxButtonLoading) {
      return _buildLoadingIndicator(uiState.iconColor);
    }

    final textWidget = Flexible(
      child: Text(
        buttonLabelType.label,
        style: uiState.textStyle.copyWith(color: uiState.textColor),
        overflow: TextOverflow.ellipsis,
      ),
    );

    switch (buttonLabelType) {
      case QdsRoundButtonIconOnly():
        return SizedBox(
          width: 24,
          height: 24,
          child: Container(
            decoration: ShapeDecoration(
              color: uiState.buttonColor,
              shape: OvalBorder(),
            ),
            child: _buildIcon(
              iconAssetString: buttonLabelType.iconAssetString,
              iconSize: uiState.iconSize,
              color: uiState.buttonColorType.getButtonIconColor(uiState.state),
            ),
          ),
        );
      case QdsRoundButtonLabelAndIcon():
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (buttonLabelType.buttonDirection == QdsRoundButtonDirection.left) ...[
              _buildIcon(
                iconAssetString: buttonLabelType.iconAssetString,
                iconSize: uiState.iconSize,
                color: uiState.buttonColorType.getButtonIconColor(uiState.state),
              ),
              SizedBox(width: 4),
              textWidget,
            ],
            if (buttonLabelType.buttonDirection == QdsRoundButtonDirection.right) ...[
              textWidget,
              SizedBox(width: 4),
              _buildIcon(
                iconAssetString: buttonLabelType.iconAssetString,
                iconSize: uiState.iconSize,
                color: uiState.buttonColorType.getButtonIconColor(uiState.state),
              )
            ],
            if (buttonLabelType is QdsRoundButtonIconOnly) ...[
              textWidget,
            ],
          ],
        );
    }
  }

  Widget _buildButtonContainer(BuildContext context, QdsRoundButtonUiState uiState, QdsRoundButtonCubit cubit) {
    return GestureDetector(
      onTapCancel: () => cubit.onTapCancel(),
      onTapUp: (_) => cubit.onTapUp(),
      onTapDown: (_) => cubit.onTapDown(),
      child: Container(
        decoration: BoxDecoration(
          color: uiState.buttonColor,
          borderRadius: BorderRadius.circular(uiState.radiusSize),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: uiState.verticalPaddingSize,
            horizontal: uiState.horizontalPaddingSize,
          ),
          child: _buildButtonContent(uiState),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = QdsRoundButtonCubit(
      uiState: initUiState,
      onPressed: onPressed,
    );

    return BlocProvider.value(
      value: cubit,
      child: BlocBuilder<QdsRoundButtonCubit, QdsRoundButtonUiState>(
        builder: (context, uiState) {
          return _buildButtonContainer(context, uiState, cubit);
        },
      ),
    );
  }
}
