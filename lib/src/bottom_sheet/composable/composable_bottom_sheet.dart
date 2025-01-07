import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_bottom_sheet.dart';

class ComposableBottomSheet extends StatelessWidget {
  final BottomSheetHeaderUiState? _headerUiState;
  final Widget _contents;

  const ComposableBottomSheet({
    BottomSheetHeaderUiState? headerUiState,
    required Widget contents,
  })  : _headerUiState = headerUiState,
        _contents = contents;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            BottomSheetTop(),
            if (_headerUiState != null)
              BottomSheetHeader(
                uiState: _headerUiState,
              ),
            _contents,
          ],
        ),
      ],
    );
  }
}
