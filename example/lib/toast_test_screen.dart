import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_toast.dart';

class ToastTestScreen extends StatelessWidget {
  const ToastTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Empty States Test')),
      body: BlocProvider(
        create: (_) => WippyToastBloc(),
        child: BlocBuilder<WippyToastBloc, WippyToastUiState>(
          builder: (context, state) => Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: WippyBoxButton(
                  initUiState: ButtonUiState(
                    buttonColorType: const ButtonColorType.primary(),
                    buttonLabelType: const ButtonLabelType.labelOnly(label: 'Show Toast'),
                    buttonSizeType: ButtonSizeType.large(),
                    onPressed: () {
                      BlocProvider.of<WippyToastBloc>(context).add(
                        const WippyToastUiEvent.show(
                          message: "Hi Hi Hi Hi Hi Hi",
                          messageKey: null,
                        ),
                      );
                    },
                  ),
                ),
              ),
              IgnorePointer(
                child: WippyToastAnimation(
                  toastWidgetBuilder: ({
                    required String message,
                    required String? messageKey,
                  }) =>
                      WippyToast(message: message),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
