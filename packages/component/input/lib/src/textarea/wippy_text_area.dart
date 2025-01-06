import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:qds_input/qds_input.dart';
import 'package:qds_input/src/textarea/text_area_cubit.dart';

class WippyTextArea extends StatelessWidget {
  static const double _textAreaHeight = 132;
  static const double _textAreaPadding = 16;
  static const double _textAreaRadius = 16;

  final TextAreaInitialData _initialData;
  final void Function(TextAreaUiState)? _onFocused;
  final void Function(TextAreaUiState)? _onTextChanged;
  final void Function(TextAreaUiState)? _onPressedTextClear;
  final double? height;

  WippyTextArea({
    required TextAreaInitialData initialData,
    void Function(TextAreaUiState)? onFocused,
    void Function(TextAreaUiState)? onTextChanged,
    void Function(TextAreaUiState)? onPressedTextClear,
    this.height = _textAreaHeight,
  })  : _initialData = initialData,
        _onFocused = onFocused,
        _onTextChanged = onTextChanged,
        _onPressedTextClear = onPressedTextClear;

  Widget? _buildLabelWidget(String? label) {
    if (label == null) return null;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label, style: body14Medium.copyWith(color: wippyGray600)),
      ],
    );
  }

  Widget? _buildHelperMessageWidget(TextAreaUiState uiState) {
    final errorState = uiState.errorState;
    if (errorState is TextInputError) {
      final errorMessage = errorState.errorMessage ?? uiState.helperMessage;
      if (errorMessage != null) {
        return Text(errorMessage, style: body12Medium.copyWith(color: wippyRed500));
      }
    } else if (uiState.helperMessage != null && uiState.state != TextInputState.disable) {
      return Text(uiState.helperMessage!, style: body12Medium.copyWith(color: wippyGray600));
    }
    return null;
  }

  Widget? _buildCounterWidget(TextAreaUiState uiState) {
    if (uiState.limitText != null && uiState.state != TextInputState.disable) {
      return Text(uiState.limitText!, style: body12Medium.copyWith(color: uiState.limitTextColor));
    }
    return null;
  }

  Widget _buildTextAreaWidget({
    required BuildContext context,
    required TextAreaUiState uiState,
  }) {
    final textAreaCubit = BlocProvider.of<TextAreaCubit>(context);

    if (uiState.focusState is TextInputFocusin) {
      textAreaCubit.focusNode.requestFocus();
    }

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: uiState.areaColor,
        borderRadius: BorderRadius.all(Radius.circular(_textAreaRadius)),
      ),
      padding: EdgeInsets.all(_textAreaPadding),
      child: TextField(
        enabled: uiState.state != TextInputState.disable,
        keyboardType: uiState.inputType,
        focusNode: textAreaCubit.focusNode,
        controller: textAreaCubit.textController,
        onChanged: textAreaCubit.onTextChanged,
        maxLines: uiState.maxLines,
        style: body14Medium.copyWith(color: wippyGray900),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          counterText: "",
          hintStyle: body14Medium.copyWith(color: wippyGray400),
          hintText: uiState.placeholder,
          border: InputBorder.none,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = TextAreaCubit(
      initialData: _initialData,
      onFocused: _onFocused,
      onTextChanged: _onTextChanged,
      onPressedTextClear: _onPressedTextClear,
    );
    return BlocProvider(
      key: ValueKey(_initialData),
      create: (context) => cubit,
      child: BlocBuilder<TextAreaCubit, TextAreaUiState>(
        builder: (context, uiState) {
          final labelWidget = _buildLabelWidget(uiState.label);
          final helperMessageWidget = _buildHelperMessageWidget(uiState);
          final counterWidget = _buildCounterWidget(uiState);

          return Column(
            children: [
              if (labelWidget != null) ...[
                labelWidget,
                SizedBox(height: 4),
              ],
              _buildTextAreaWidget(
                context: context,
                uiState: uiState,
              ),
              if (helperMessageWidget != null || counterWidget != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (helperMessageWidget != null) helperMessageWidget else const Spacer(),
                      if (counterWidget != null) counterWidget else const Spacer(),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
