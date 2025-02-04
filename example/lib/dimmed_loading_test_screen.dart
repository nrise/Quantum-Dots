import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_spinner.dart';

class DimmedLoadingTestScreen extends StatefulWidget {
  const DimmedLoadingTestScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DimmedLoadingTestState();
  }
}

class _DimmedLoadingTestState extends State<DimmedLoadingTestScreen> {
  bool _canShowDimmedLoadingScreen = false;

  Widget _buildDimmedLoadingScreen() {
    return Stack(
      children: [
        WippyDimmedLoading(),
        WippyBoxButton(
          initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.secondary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Escape'),
            buttonSizeType: ButtonSizeType.large(),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      WippyBoxButton(
        initUiState: ButtonUiState(
          buttonColorType: const ButtonColorType.primary(),
          buttonLabelType: const ButtonLabelType.labelOnly(label: 'Dimmed State on'),
          buttonSizeType: ButtonSizeType.large(),
          onPressed: () {
            setState(() {
              _canShowDimmedLoadingScreen = true;
            });
          },
        ),
      )
    ];

    for (var index = 0; index < 30; index++) {
      items += [
        const SizedBox(height: 20),
        WippyBoxButton(
          initUiState: ButtonUiState(
              buttonColorType: const ButtonColorType.primary(),
              buttonLabelType: const ButtonLabelType.labelOnly(label: 'Do nothing button'),
              buttonSizeType: ButtonSizeType.large()),
        )
      ];
    }

    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Dimmed Loading Test',
          style: headline20Bold,
        )),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Stack(
              children: [ListView(children: items), if (_canShowDimmedLoadingScreen) _buildDimmedLoadingScreen()],
            )));
  }
}
