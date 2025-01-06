import 'package:flutter/material.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:qds_input/src/chat_input/send_button.dart';

class ChatInput extends StatefulWidget {
  final Function(String) onClickSend;
  final Function(String) onUpdatedMessage;
  final bool enable;
  final String? placeHolder;
  final String? buildMessage;

  ChatInput({
    required this.onClickSend,
    required this.onUpdatedMessage,
    this.placeHolder,
    this.buildMessage,
    this.enable = true,
  }) : super(key: ValueKey(buildMessage));

  @override
  ChatInputState createState() => ChatInputState();
}

class ChatInputState extends State<ChatInput> {
  static const maxCount = 1000;
  static const maxLine = 3;

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.buildMessage ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 8, bottom: 8, top: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: widget.enable ? wippyWhite : wippyGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
          side: BorderSide(
            color: wippyGray300,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              maxLines: maxLine,
              minLines: 1,
              onChanged: (text) {
                widget.onUpdatedMessage(text);
              },
              style: body14Medium.copyWith(color: wippyGray900),
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                counterText: "",
                hintStyle: body14Medium.copyWith(color: wippyGray400),
                hintText: widget.placeHolder,
              ),
              textAlign: TextAlign.start,
              enabled: widget.enable,
            ),
          ),
          SendButton(
            onClickSend: () {
              if (widget.enable && _controller.value.text.isNotEmpty) {
                widget.onClickSend(_controller.value.text);
                _controller.clear();
                widget.onUpdatedMessage("");
              }
            },
            active: widget.enable,
            empty: _controller.value.text.isNotEmpty,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
