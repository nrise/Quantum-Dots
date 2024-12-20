import 'package:chips/chips.dart';
import 'package:flutter/widgets.dart';
import 'package:foundation/foundation.dart';

class SingleSelectiveRegularChip extends StatelessWidget {
  static const double _selectedBorderWidth = 1;
  static const double _chipHorizontalPaddingSize = 16.0;
  static const double _chipRadiusSize = 16.0;

  final SingleSelectiveChipUiState chipUiState;
  final void Function() onPressed;

  SingleSelectiveRegularChip({required this.onPressed, required this.chipUiState});

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration;
    final EdgeInsetsGeometry padding;
    final Color textColor;

    if (chipUiState.isSelected) {
      padding = EdgeInsets.symmetric(horizontal: _chipHorizontalPaddingSize);
      decoration = BoxDecoration(
        color: wippyPink200,
        borderRadius: BorderRadius.circular(_chipRadiusSize),
        border: Border.all(
          color: wippyPink400,
          width: _selectedBorderWidth,
        ),
      );
      textColor = wippyPink500;
    } else {
      padding = EdgeInsets.symmetric(
        vertical: _selectedBorderWidth,
        horizontal: _chipHorizontalPaddingSize,
      );
      decoration = BoxDecoration(
        color: wippyGray100,
        borderRadius: BorderRadius.circular(_chipRadiusSize),
      );
      textColor = wippyGray900;
    }

    return GestureDetector(
      onTapUp: (_) {
        onPressed();
      },
      child: SizedBox(
        height: 54,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: decoration,
          padding: padding,
          child: Text(
            chipUiState.chipUiProperties.label,
            textAlign: TextAlign.center,
            style: headline16Bold.copyWith(color: textColor),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
