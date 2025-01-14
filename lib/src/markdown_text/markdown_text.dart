import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

class MarkdownText extends StatelessWidget {
  final String text;
  final Function(String url)? openUrl;
  final TextAlign? textAlign;
  final TextStyle? style;

  const MarkdownText({
    super.key,
    required this.text,
    this.openUrl,
    this.textAlign,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final RegExp linkExp = RegExp(r'\[([^\]]+)\]\(([^\)]+)\)');
    final RegExp boldExp = RegExp(r'\*\*(.*?)\*\*');
    final RegExp listItemExp = RegExp(r'^\s*([-*])\s+(.*)', multiLine: true);

    List<InlineSpan> children = [];
    int lastMatchEnd = 0;

    for (final match in linkExp.allMatches(text)) {
      if (match.start > lastMatchEnd) {
        final plainText = text.substring(lastMatchEnd, match.start);
        _addTextWithBoldAndBullets(plainText, children, listItemExp, boldExp);
      }

      final linkText = match.group(1)!;
      final linkUrl = match.group(2)!;

      children.add(
        TextSpan(
          text: linkText,
          style: _getTextStyle().copyWith(
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () async {
              openUrl?.call(linkUrl);
            },
        ),
      );

      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < text.length) {
      final remainingText = text.substring(lastMatchEnd);
      _addTextWithBoldAndBullets(remainingText, children, listItemExp, boldExp);
    }

    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        style: _getTextStyle(),
        children: children,
      ),
    );
  }

  void _addTextWithBoldAndBullets(String text, List<InlineSpan> children, RegExp listItemExp, RegExp boldExp) {
    final lines = text.split('\n');
    for (final line in lines) {
      final listItemMatch = listItemExp.firstMatch(line);
      if (listItemMatch != null) {
        final content = listItemMatch.group(2) ?? '';
        children.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• ", style: _getTextStyle()),
                Expanded(
                  child: RichText(
                    textAlign: textAlign ?? TextAlign.start,
                    text: _parseBoldText(content, boldExp),
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        children.addAll(_parseBoldText(line, boldExp).children!);
      }
    }
  }

  TextSpan _parseBoldText(String text, RegExp boldExp) {
    List<InlineSpan> spans = [];
    int lastMatchEnd = 0;

    for (final match in boldExp.allMatches(text)) {
      if (match.start > lastMatchEnd) {
        spans.add(TextSpan(text: text.substring(lastMatchEnd, match.start), style: _getTextStyle()));
      }
      spans.add(TextSpan(
        text: match.group(1),
        style: _getTextStyle().copyWith(fontWeight: FontWeight.bold),
      ));
      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd), style: _getTextStyle()));
    }

    return TextSpan(children: spans);
  }

  TextStyle _getTextStyle() {
    return style ?? body12Medium.copyWith(color: wippyGray600);
  }
}
