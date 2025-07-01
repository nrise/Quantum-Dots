import 'state/multi_selective_chip_ui_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_animation.dart';

class MultiSelectiveCustomChip extends StatelessWidget {
  static const double _verticalPaddingSize = 8.0;
  static const double _horizontalPaddingSize = 16.0;
  static const double _radiusSize = 50.0;
  static const double _borderWidth = 1;

  final MultiSelectiveCustomChipUiState chipUiState;
  final void Function() onPressed;

  MultiSelectiveCustomChip({
    required this.onPressed,
    required this.chipUiState,
  });

  @override
  Widget build(BuildContext context) {
    Widget chipContent;

    if (chipUiState.isSelected) {
      chipContent = Container(
        decoration: BoxDecoration(
          color: chipUiState.selectedBackgroundColor ?? chipUiState.backgroundColor,
          borderRadius: BorderRadius.circular(_radiusSize),
          border: Border.all(
            color: chipUiState.selectedBorderColor ?? chipUiState.borderColor,
            width: _borderWidth,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: _verticalPaddingSize, horizontal: _horizontalPaddingSize),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              chipUiState.iconAsset,
              width: 16,
              height: 16,
              colorFilter: ColorFilter.mode(
                chipUiState.selectedTextColor ?? chipUiState.textColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              chipUiState.chipUiProperties.label,
              style: body14Bold.copyWith(color: chipUiState.selectedTextColor),
            ),
          ],
        ),
      );
    } else {
      chipContent = Container(
        decoration: BoxDecoration(
          color: chipUiState.backgroundColor,
          borderRadius: BorderRadius.circular(_radiusSize),
          border: Border.all(
            color: chipUiState.borderColor,
            width: _borderWidth,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: _verticalPaddingSize, horizontal: _horizontalPaddingSize),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              chipUiState.iconAsset,
              width: 16,
              height: 16,
              colorFilter: ColorFilter.mode(
                chipUiState.textColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              chipUiState.chipUiProperties.label,
              style: body14Bold.copyWith(color: chipUiState.textColor),
            ),
          ],
        ),
      );
    }

    return QdsPressableWidget(
      onPressed: onPressed,
      child: chipContent,
    );
  }
}
