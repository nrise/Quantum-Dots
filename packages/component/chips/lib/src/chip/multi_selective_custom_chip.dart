import 'package:qds_chips/src/chip/state/multi_selective_chip_ui_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qds_foundation/qds_foundation.dart';

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
    if (chipUiState.isSelected) {
      return GestureDetector(
        onTapUp: (_) {
          onPressed();
        },
        child: Container(
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
        ),
      );
    } else {
      return GestureDetector(
        onTapUp: (_) {
          onPressed();
        },
        child: Container(
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
        ),
      );
    }
  }
}
