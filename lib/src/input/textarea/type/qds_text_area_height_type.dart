sealed class QdsTextAreaHeightType {
  const QdsTextAreaHeightType();
}

class QdsTextAreaHeightTypeFixed extends QdsTextAreaHeightType {
  final double height;

  const QdsTextAreaHeightTypeFixed({required this.height});
}

class QdsTextAreaHeightTypeDynamic extends QdsTextAreaHeightType {
  final double? minHeight;

  const QdsTextAreaHeightTypeDynamic({this.minHeight});
}
