import 'package:flutter/material.dart';

sealed class SlotState {
  final bool isFirst;
  const SlotState({required this.isFirst});
}

class EmptySlot extends SlotState {
  final Icon emptyIcon;
  final Icon plusIcon;

  const EmptySlot({
    required this.emptyIcon,
    required this.plusIcon,
    required super.isFirst,
  });
}

class PlusSlot extends SlotState {
  final Icon emptyIcon;
  final Icon plusIcon;
  final VoidCallback onAdd;

  const PlusSlot({
    required this.emptyIcon,
    required this.plusIcon,
    required this.onAdd,
    required super.isFirst,
  });
}

class LocalFilledSlot extends SlotState {
  final String localPath;
  final Icon editIcon;
  final VoidCallback onClick;

  const LocalFilledSlot({
    required this.localPath,
    required this.editIcon,
    required this.onClick,
    required super.isFirst,
  });
}

class RemoteFilledSlot extends SlotState {
  final String url;
  final Icon editIcon;
  final VoidCallback onClick;

  const RemoteFilledSlot({
    required this.url,
    required this.editIcon,
    required this.onClick,
    required super.isFirst,
  });
}
