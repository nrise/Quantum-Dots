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
            title: "No ongoing conversation",
            description: "Use Profile Evaluation to start a conversation with\ninterested friends.",
            buttonLabel: "Evaluate my profile"),
        onPressedButton: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
