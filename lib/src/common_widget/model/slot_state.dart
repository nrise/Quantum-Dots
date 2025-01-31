import 'package:flutter/material.dart';

sealed class SlotState {
  final Widget? slotBadge;
  final Widget slotIcon;
  const SlotState({this.slotBadge, required this.slotIcon});
}

class EmptySlot extends SlotState {
  final Icon emptyIcon;

  const EmptySlot({
    required this.emptyIcon,
    required super.slotIcon,
    super.slotBadge,
  });
}

class PlusSlot extends SlotState {
  final Icon emptyIcon;
  final VoidCallback onAdd;

  const PlusSlot({
    required this.emptyIcon,
    required this.onAdd,
    required super.slotIcon,
    super.slotBadge,
  });
}

class LocalFilledSlot extends SlotState {
  final String localPath;
  final VoidCallback onClick;

  const LocalFilledSlot({
    required this.localPath,
    required this.onClick,
    required super.slotIcon,
    super.slotBadge,
  });
}

class RemoteFilledSlot extends SlotState {
  final String url;
  final VoidCallback onClick;

  const RemoteFilledSlot({
    required this.url,
    required this.onClick,
    required super.slotIcon,
    super.slotBadge,
  });
}
