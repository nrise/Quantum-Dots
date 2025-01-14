class JavascriptChannel {
  final String name;
  final Function(String) onMessageReceived;

  JavascriptChannel({
    required this.name,
    required this.onMessageReceived,
  });
}
