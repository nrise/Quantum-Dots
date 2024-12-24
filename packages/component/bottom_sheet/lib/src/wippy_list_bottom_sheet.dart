import 'package:flutter/widgets.dart';
import 'package:qds_foundation/foundation.dart';

import 'item/selectable_item.dart';

class WippyListBottomSheet extends StatelessWidget {
  static const double _itemHeight = 54;

  final String? title;
  final Iterable<SelectableItem> itemList;
  final Function(SelectableItem) onClickItem;

  const WippyListBottomSheet({
    this.title,
    required this.itemList,
    required this.onClickItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 16),
              if (title != null)
                Container(
                  height: _itemHeight,
                  alignment: Alignment.center,
                  child: Text(
                    title!,
                    style: headline20Bold.copyWith(color: wippyGray900),
                  ),
                ),
              ...itemList.map(
                (item) {
                  return GestureDetector(
                    onTap: () => onClickItem(item),
                    child: Container(
                      height: _itemHeight,
                      alignment: Alignment.center,
                      child: Text(
                        item.displayName,
                        style: body16Medium.copyWith(color: wippyGray900),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        )
      ],
    );
  }
}
