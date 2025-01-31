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
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: _buildSlot(),
      ),
    );
  }

  Widget _buildSlot() {
    switch (slot) {
      case EmptySlot():
        return Stack(
          children: [
            if (slot.isFirst)
              Positioned(
                top: 8,
                left: 8,
                child: Icon(Icons.first_page),
              ),
            Center(child: (slot as EmptySlot).emptyIcon),
            Positioned(
              bottom: 8,
              right: 8,
              child: _buildPlusIcon((slot as EmptySlot).plusIcon),
            ),
          ],
        );
      case PlusSlot():
        return GestureDetector(
          onTap: (slot as PlusSlot).onAdd,
          child: Stack(
            children: [
              if (slot.isFirst)
                Positioned(
                  top: 0,
                  left: 0,
                  child: Icon(Icons.add),
                ),
              Center(child: (slot as PlusSlot).emptyIcon),
              Positioned(
                bottom: 8,
                right: 8,
                child: _buildPlusIcon((slot as PlusSlot).plusIcon),
              ),
            ],
          ),
        );
      case LocalFilledSlot():
        final localSlot = slot as LocalFilledSlot;
        return GestureDetector(
          onTap: localSlot.onClick,
          child: Stack(
            children: [
              Image.file(File(localSlot.localPath), fit: BoxFit.cover),
              if (slot.isFirst)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Icon(Icons.first_page),
                ),
              Positioned(
                bottom: 8,
                right: 8,
                child: _buildPlusIcon((slot as LocalFilledSlot).editIcon),
              ),
            ],
          ),
        );
      case RemoteFilledSlot():
        final remoteSlot = slot as RemoteFilledSlot;
        return GestureDetector(
          onTap: remoteSlot.onClick,
          child: Stack(
            children: [
              Image.network(remoteSlot.url, fit: BoxFit.cover, width: width, height: height),
              if (slot.isFirst)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Icon(Icons.first_page),
                ),
              Positioned(
                bottom: 8,
                right: 8,
                child: _buildPlusIcon((slot as RemoteFilledSlot).editIcon),
              ),
            ],
          ),
        );
    }
  }
}

Widget _buildPlusIcon(Icon plusIcon) {
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
