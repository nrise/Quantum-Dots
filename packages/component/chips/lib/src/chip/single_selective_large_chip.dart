import 'package:qds_chips/chips.dart';
import 'package:flutter/widgets.dart';
import 'package:qds_foundation/foundation.dart';

class SingleSelectiveLargeChip extends StatelessWidget {
  static const double _selectedBorderWidth = 1;
  static const double _chipPaddingSize = 16.0;
  static const double _chipRadiusSize = 16.0;
  static const double _imageSize = 32.0;

  final SingleSelectiveChipUiState chipUiState;
  final void Function() onPressed;

  SingleSelectiveLargeChip({required this.onPressed, required this.chipUiState});

  Widget _buildSelectedWidget() {
    final String? iconAssetString = chipUiState.iconAssetString;

    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: wippyPink200,
            borderRadius: BorderRadius.circular(_chipRadiusSize),
            border: Border.all(color: wippyPink400, width: _selectedBorderWidth)),
        padding: EdgeInsets.all(_chipPaddingSize - _selectedBorderWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (iconAssetString != null) ...[Image.asset(iconAssetString, width: _imageSize, height: _imageSize), SizedBox(width: 8.0)],
            Flexible(
                flex: 1,
                child: Text(
                  chipUiState.chipUiProperties.label,
                  style: headline16Bold.copyWith(color: wippyPink500),
                  textAlign: TextAlign.center,
                ))
          ],
        ));
  }

  Widget _buildDeselectedWidget() {
    final String? iconAssetString = chipUiState.iconAssetString;

    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: wippyGray100, borderRadius: BorderRadius.circular(_chipRadiusSize)),
        padding: EdgeInsets.all(_chipPaddingSize),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (iconAssetString != null) ...[Image.asset(iconAssetString, width: _imageSize, height: _imageSize), SizedBox(width: 8.0)],
            Flexible(
                flex: 1,
                child: Text(
                  chipUiState.chipUiProperties.label,
                  style: headline16Bold.copyWith(color: wippyGray900),
                  textAlign: TextAlign.center,
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (_) {
        onPressed();
      },
      child: chipUiState.isSelected ? _buildSelectedWidget() : _buildDeselectedWidget(),
    );
  }
}
