import 'package:qds_button/qds_button.dart';
import 'package:flutter/material.dart';
import 'package:qds_foundation/qds_foundation.dart';
import 'package:qds_spinner/qds_spinner.dart';

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
          onPressed: () {
            Navigator.pop(context);
          },
          initUiState: ButtonUiState(
              buttonColorType: const ButtonColorType.secondary(),
              buttonLabelType: const ButtonLabelType.labelOnly(label: '탈출'),
              buttonSizeType: ButtonSizeType.large()),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      WippyBoxButton(
        onPressed: () {
          setState(() {
            _canShowDimmedLoadingScreen = true;
          });
        },
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Dimmed 상태 on'),
            buttonSizeType: ButtonSizeType.large()),
      )
    ];

    for (var index = 0; index < 30; index++) {
      items += [
        const SizedBox(height: 20),
        WippyBoxButton(
          onPressed: () {},
          initUiState: ButtonUiState(
              buttonColorType: const ButtonColorType.primary(),
              buttonLabelType: const ButtonLabelType.labelOnly(label: '아무 동작 안 하는 버튼'),
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
