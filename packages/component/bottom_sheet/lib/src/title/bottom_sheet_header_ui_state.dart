import 'dart:ui';

class BottomSheetHeaderUiState {
  final BottomSheetHeaderLeading? leading;
  final BottomSheetHeaderTitle title;
  final BottomSheetHeaderActions? actions;

  const BottomSheetHeaderUiState({
    required this.title,
    this.leading,
    this.actions,
  });
}

class BottomSheetHeaderLeading {
  final String assetPath;
  final VoidCallback? onPressed;

  const BottomSheetHeaderLeading({
    required this.assetPath,
    this.onPressed,
  });
}

class BottomSheetHeaderTitle {
  final String title;
  final String? description;

  const BottomSheetHeaderTitle({
    required this.title,
    this.description,
  });
}

class BottomSheetHeaderActions {
  final VoidCallback? onPressed;
  final String text;

  const BottomSheetHeaderActions({
    this.onPressed,
    required this.text,
  });
}
