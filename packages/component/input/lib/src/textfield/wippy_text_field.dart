import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:qds_input/src/textfield/text_field_cubit.dart';

import '../../qds_input.dart';

class WippyTextField extends StatelessWidget {
  static const double _underlineWidth = 2;
  static const double _clearIconSize = 24;

  final TextFieldInitialData _initialData;
  final void Function(TextFieldUiState)? _onFocused;
  final void Function(TextFieldUiState)? _onTextChanged;
  final void Function(TextFieldUiState)? _onPressedTextClear;

  WippyTextField({
    required TextFieldInitialData initialData,
    void Function(TextFieldUiState)? onFocused,
    void Function(TextFieldUiState)? onTextChanged,
    void Function(TextFieldUiState)? onPressedTextClear,
  })  : _initialData = initialData,
        _onFocused = onFocused,
        _onTextChanged = onTextChanged,
        _onPressedTextClear = onPressedTextClear;

  Widget? _buildLabelWidget(String? label) {
    if (label != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(label, style: body14Medium.copyWith(color: wippyGray600)),
        ],
      );
    }
    return null;
  }

  Widget? _buildHelperMessageWidget(TextFieldUiState uiState) {
    final errorState = uiState.errorState;
    if (errorState is TextInputError) {
      final errorMessage = errorState.errorMessage ?? uiState.helperMessage;
      if (errorMessage != null) {
        return Text(errorMessage, style: body12Medium.copyWith(color: wippyRed500));
      } else {
        return Flexible(
          child: SizedBox(),
          flex: 1,
        );
      }
    } else if (uiState.helperMessage != null && uiState.state != TextInputState.disable) {
      return Text(uiState.helperMessage!, style: body12Medium.copyWith(color: wippyGray600));
    }
    return null;
  }

  Widget? _buildCounterWidget(TextFieldUiState uiState) {
    if (uiState.limitText != null && uiState.state != TextInputState.disable) {
      return Text(uiState.limitText!, style: body12Medium.copyWith(color: uiState.limitTextColor));
    }
    return null;
  }

  Widget _buildTextFieldWidget({
    required BuildContext context,
    required TextFieldUiState uiState,
  }) {
    final textFieldCubit = BlocProvider.of<TextFieldCubit>(context);

    if (uiState.focusState is TextInputFocusin) {
      textFieldCubit.focusNode.requestFocus();
    }

    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, _clearIconSize, 0),
              child: TextField(
                keyboardType: uiState.inputType,
                focusNode: textFieldCubit.focusNode,
                enabled: uiState.state != TextInputState.disable,
                controller: textFieldCubit.textController,
                maxLines: uiState.maxLine,
                onChanged: textFieldCubit.onTextChanged,
                maxLength: uiState.needToBlockOverflowInput ? uiState.maxCount : null,
                style: headline20Bold.copyWith(color: wippyGray900),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  counterText: "",
                  hintStyle: headline20Bold.copyWith(color: wippyGray400),
                  hintText: uiState.placeholder,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            if (uiState.isShowClearIcon)
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: textFieldCubit.onPressedTextClear,
                  child: SvgPicture.asset(
                    IconPath.iconDeleteFilled24,
                    width: _clearIconSize,
                    height: _clearIconSize,
                    semanticsLabel: 'delete button',
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 8),
        Container(height: _underlineWidth, color: uiState.underlineColor),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = TextFieldCubit(
      initialData: _initialData,
      onFocused: _onFocused,
      onTextChanged: _onTextChanged,
      onPressedTextClear: _onPressedTextClear,
    );

    return BlocProvider(
      key: ValueKey(_initialData),
      create: (context) => cubit,
      child: BlocBuilder<TextFieldCubit, TextFieldUiState>(
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
              _buildTextFieldWidget(
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
