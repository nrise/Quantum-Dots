import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_animation.dart';
import 'package:quantum_dots/src/banner/qds_banner_ui_state.dart';

import '../badge/badge_type.dart';
import '../badge/wippy_badge.dart';
import '../common_widget/sized_icon.dart';
import 'qds_banner_type.dart';

class QdsBanner extends StatelessWidget {
  final QdsBannerUiState uiState;

  const QdsBanner({super.key, required this.uiState});

  @override
  Widget build(BuildContext context) {
    return QdsPressableWidget(
      onPressed: uiState.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
        constraints: const BoxConstraints(
          minHeight: 84,
        ),
        decoration: BoxDecoration(
          color: uiState.bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedIcon(size: 32, asset: uiState.iconPath),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(uiState.title, style: body16Bold.copyWith(color: wippyGray800)),
                  Text(
                    uiState.description,
                    style: body12Medium.copyWith(color: wippyGray700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            switch (uiState.bannerType) {
              QdsBannerType.arrowType => SizedIcon(size: 24, asset: IconPath.iconRight),
              QdsBannerType.newType => WippyBadge(NBadge()),
              QdsBannerType.defaultType => const SizedBox.shrink(),
            },
          ],
        ),
      ),
    );
  }
}
