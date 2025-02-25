import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'wippy_header_actions.dart';
import 'wippy_header_ui_state.dart';

class WippyHeader extends StatelessWidget implements PreferredSizeWidget {
  static const double _underlineHeight = 1;
  static const double headerHeight = 44;
  static const double thumbnailSize = 32;

  final WippyHeaderUiState _uiState;

  const WippyHeader({required WippyHeaderUiState uiState}) : _uiState = uiState;

  Widget _buildLeading() {
    final leading = _uiState.leading;

    if (leading == null) {
      return SizedBox();
    }

    return SizedBox(
      width: 24,
      height: 24,
      child: GestureDetector(
        onTapUp: (_) {
          leading.onPressed?.call();
        },
        child: SizedIcon(
          size: 24,
          asset: leading.asset,
          colorFilter: ColorFilter.mode(leading.iconColor, BlendMode.srcIn),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    final title = _uiState.title;

    if (title == null) {
      return SizedBox();
    }

    return Container(
      width: double.infinity,
      height: headerHeight,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          IgnorePointer(
            child: _buildTitleSizeMargin(),
          ),
          Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (title.profileImageUrl != null || title.errorPlaceHolder != null)
                    GestureDetector(
                      onTapUp: (_) => title.onPressedProfileImage?.call(),
                      child: ClipOval(
                        child: WippyNetworkImage(
                          width: thumbnailSize,
                          height: thumbnailSize,
                          shapeDecoration: const ShapeDecoration(shape: CircleBorder()),
                          networkImageUrl: title.profileImageUrl ?? "",
                          placeHolderWidget: title.placeHolder != null
                              ? SvgPicture.asset(
                                  title.placeHolder!,
                                  width: thumbnailSize,
                                  height: thumbnailSize,
                                )
                              : null,
                          errorWidget: title.errorPlaceHolder != null
                              ? SvgPicture.asset(
                                  title.errorPlaceHolder!,
                                  width: thumbnailSize,
                                  height: thumbnailSize,
                                )
                              : null,
                        ),
                      ),
                    ),
                  const SizedBox(width: 8),
                  if (_uiState.title != null)
                    Text(
                      title.text,
                      style: headline18Bold.copyWith(color: wippyGray900),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (title.iconAsset != null) ...[
                    const SizedBox(width: 2),
                    SizedIcon(
                      size: 16,
                      asset: title.iconAsset!,
                      colorFilter: ColorFilter.mode(title.iconColor ?? wippyGray900, BlendMode.srcIn),
                    ),
                  ]
                ],
              )),
          IgnorePointer(
            child: _buildTitleSizeMargin(),
          ),
        ],
      ),
    );
  }

  Widget _buildActions() {
    final actions = _uiState.actions;

    if (actions == null) {
      return SizedBox();
    }

    switch (actions) {
      case WippyHeaderSingleTextAction():
        return GestureDetector(
          onTapUp: (_) => actions.onPressedText?.call(),
          child: Text(actions.text, style: headline16Bold.copyWith(color: wippyPink500)),
        );
      case WippyHeaderMultipleIconActions():
        return Row(children: [
          SizedIcon(
            size: 24,
            asset: actions.leftIconAsset,
            colorFilter: ColorFilter.mode(actions.leftIconColor, BlendMode.srcIn),
            onPressed: () {
              actions.onPressedLeftIcon?.call();
            },
          ),
          SizedIcon(
            size: 24,
            asset: actions.rightIconAsset,
            colorFilter: ColorFilter.mode(actions.rightIconColor, BlendMode.srcIn),
            onPressed: () {
              actions.onPressedRightIcon?.call();
            },
          )
        ]);
      case WippyHeaderSingleIconActions():
        return GestureDetector(
          onTapUp: (_) => actions.onPressedIcon?.call(),
          child: SizedIcon(
            size: 24,
            asset: actions.iconAsset,
            colorFilter: ColorFilter.mode(actions.iconColor, BlendMode.srcIn),
          ),
        );
    }
  }

  Widget _buildTitleSizeMargin() {
    final actions = _uiState.actions;

    if (actions == null) {
      return SizedBox(width: 40);
    }

    switch (actions) {
      case WippyHeaderSingleTextAction():
        return SizedBox(width: 80);
      case WippyHeaderMultipleIconActions():
        return SizedBox(width: 80);
      case WippyHeaderSingleIconActions():
        return SizedBox(width: 80);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _uiState.backgroundColor,
      child: Wrap(
        children: [
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                Container(
                  height: _uiState.needToShowUnderline ? preferredSize.height - _underlineHeight : preferredSize.height,
                  color: _uiState.backgroundColor,
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: Stack(
                    children: [
                      Container(
                        height: headerHeight,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _buildLeading(),
                              _buildActions(),
                            ],
                          ),
                        ),
                      ),
                      _buildTitle()
                    ],
                  ),
                ),
                if (_uiState.needToShowUnderline)
                  Divider(
                    height: _underlineHeight,
                    thickness: 1,
                    color: wippyGray300,
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(headerHeight);
}
