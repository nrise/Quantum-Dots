import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_empty_states.dart';
import 'package:quantum_dots/qds_foundation.dart';

class EmptyStatesTestScreen extends StatelessWidget {
  const EmptyStatesTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Empty States Test')),
      body: WippyEmptyStates(
        uiState: const EmptyStatesUiState(
            iconAssetName: IconPath.iconChatOpen,
            title: "진행중인 대화가 없어요.",
            description: "프로필 평가받기를 사용해서\n나에게 관심 있는 친구와 대화를 시작해 보세요.",
            buttonLabel: "내 프로필 평가받기"),
        onPressedButton: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
