import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quantum_dots/qds_bottom_sheet.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_foundation.dart';

class WippyPickerBottomSheet extends WippyBottomSheet {
  final BottomSheetHeaderUiState? _headerUiState;
  final List<PickerItem> _items;
  final int _initIndex;
  final String ctaText;
  final void Function(PickerItem item)? _onPicked;
  final void Function(PickerItem item)? _onSelected;

  const WippyPickerBottomSheet({
    required List<PickerItem> items,
    void Function(PickerItem item)? onPicked,
    void Function(PickerItem item)? onSelected,
    int? initIndex,
    BottomSheetHeaderUiState? headerUiState,
    required this.ctaText,
  })  : _headerUiState = headerUiState,
        _items = items,
        _initIndex = initIndex ?? 0,
        _onPicked = onPicked,
        _onSelected = onSelected;

  @override
  State<StatefulWidget> createState() {
    return WippyPickerBottomSheetState();
  }
}

class WippyPickerBottomSheetState extends WippyBottomSheetState<WippyPickerBottomSheet> {
  PickerItem? currentPickedItem;

  @override
  void initState() {
    final initItem = widget._items.elementAtOrNull(widget._initIndex);
    if (initItem != null) {
      currentPickedItem = initItem;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: wippyWhite),
    );

    return ComposableBottomSheet(
      headerUiState: widget._headerUiState,
      contents: Container(
        color: wippyWhite,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 212,
                padding: EdgeInsets.symmetric(vertical: 26),
                child: CupertinoPicker(
                  backgroundColor: wippyWhite,
                  itemExtent: 40,
                  onSelectedItemChanged: (index) {
                    final selectedItem = widget._items.elementAtOrNull(index);
                    if (selectedItem != null) {
                      currentPickedItem = widget._items[index];
                      widget._onPicked?.call(selectedItem);
                    }
                  },
                  scrollController: FixedExtentScrollController(initialItem: widget._initIndex),
                  children: List<Widget>.generate(
                    widget._items.length,
                    (index) {
                      return Center(
                        child: Text(
                          widget._items[index].displayName,
                          style: headline20Bold.copyWith(
                            color: wippyGray900,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: WippyBoxButton(
                  onPressed: () {
                    final currentPickedItem = this.currentPickedItem;
                    if (currentPickedItem != null) {
                      widget._onSelected?.call(currentPickedItem);
                      Navigator.pop(context);
                    }
                  },
                  initUiState: ButtonUiState(
                    buttonLabelType: ButtonLabelType.labelOnly(label: widget.ctaText),
                    buttonColorType: ButtonColorType.primary(),
                    buttonSizeType: ButtonSizeType.large(),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
    );
    super.dispose();
  }
}
