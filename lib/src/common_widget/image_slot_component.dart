import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';

import 'model/slot_state.dart';

class ImageSlotComponent extends StatelessWidget {
  final SlotState slot;
  final double width;
  final double height;

  const ImageSlotComponent({
    super.key,
    required this.slot,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (slot is PlusSlot) {
          (slot as PlusSlot).onAdd();
        } else if (slot is LocalFilledSlot) {
          (slot as LocalFilledSlot).onClick();
        } else if (slot is RemoteFilledSlot) {
          (slot as RemoteFilledSlot).onClick();
        }
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: slot.bgColor ?? wippyGray100,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: _buildSlot(),
        ),
      ),
    );
  }

  Widget _buildSlot() {
    final badge = slot.slotBadge != null
        ? Positioned(
            top: 8,
            left: 8,
            child: slot.slotBadge!,
          )
        : null;

    final slotIcon = Positioned(
      bottom: 8,
      right: 8,
      child: _buildPlusIcon(
        slot.slotIcon,
      ),
    );

    switch (slot) {
      case EmptySlot():
        return _buildStack(
          children: [
            if (badge != null) badge,
            Center(child: (slot as EmptySlot).emptyIcon),
            slotIcon,
          ],
        );
      case PlusSlot():
        return _buildStack(
          children: [
            if (badge != null) badge,
            Center(child: (slot as PlusSlot).emptyIcon),
            slotIcon,
          ],
        );
      case LocalFilledSlot():
        final localSlot = slot as LocalFilledSlot;
        return _buildStack(
          children: [
            Image.file(
              File(localSlot.localPath),
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
            if (badge != null) badge,
            slotIcon,
          ],
        );
      case RemoteFilledSlot():
        final remoteSlot = slot as RemoteFilledSlot;
        return _buildStack(
          children: [
            Image.network(
              remoteSlot.url,
              fit: BoxFit.cover,
              width: width,
              height: height,
            ),
            if (badge != null) badge,
            slotIcon,
          ],
        );
    }
  }

  Widget _buildStack({required List<Widget> children}) {
    return Stack(children: children);
  }

  Widget _buildPlusIcon(Widget? plusIcon) {
    if (plusIcon == null) return const SizedBox.shrink();
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: wippyWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(51),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: plusIcon,
      ),
    );
  }
}
