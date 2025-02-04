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
        QdsBoxButton(
          initUiState: QdsBoxButtonUiState(
            buttonColorType: const QdsBoxButtonColorType.secondary(),
            buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Escape'),
            buttonSizeType: QdsBoxButtonSizeType.large(),
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
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Dimmed State on'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
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
        QdsBoxButton(
          initUiState: QdsBoxButtonUiState(
            buttonColorType: const QdsBoxButtonColorType.primary(),
            buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Do nothing button'),
            buttonSizeType: QdsBoxButtonSizeType.large(),
          ),
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
