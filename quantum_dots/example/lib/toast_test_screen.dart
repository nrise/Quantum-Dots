import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quantum_dots/quantum_dots.dart';

class ToastTestScreen extends StatelessWidget {
  const ToastTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Empty States Test')),
        body: BlocProvider(
            create: (_) => WippyToastBloc(),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: WippyBoxButton(
                    onPressed: () {
                      BlocProvider.of<WippyToastBloc>(context).add(const WippyToastUiEvent.show(message: "하이하이하이하이하이하이하이하이하이하이하이하이"));
                    },
                    initUiState: ButtonUiState(
                      buttonColorType: const ButtonColorType.primary(),
                      buttonLabelType: const ButtonLabelType.labelOnly(label: 'Toast 보여주기'),
                      buttonSizeType: ButtonSizeType.large(),
                    ),
                  ),
                ),
                IgnorePointer(
                  child: ToastBlocBuilderCreator().create(),
                ),
              ],
            )));
  }
}
