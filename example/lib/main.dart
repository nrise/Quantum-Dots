import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_badge.dart';
import 'package:quantum_dots/qds_bottom_sheet.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_chips.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_header.dart';
import 'package:quantum_dots/qds_input.dart';
import 'package:quantum_dots/qds_page_route.dart';
import 'package:quantum_dots/qds_popup.dart';
import 'package:quantum_dots/qds_progress.dart';
import 'package:quantum_dots/qds_spinner.dart';
import 'package:quantum_dots/qds_tooltip.dart';
import 'package:quantum_dots_app/sample_buttons.dart';

import 'dimmed_loading_test_screen.dart';
import 'empty_states_test_screen.dart';
import 'toast_test_screen.dart';

const String testProfileImageUrl = "https://picsum.photos/200/300";

void main() {
  runApp(const DesignSystemApp());
}

class DesignSystemApp extends StatelessWidget {
  const DesignSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quantum Dots DesignSystem',
      home: DesignSystemSamplePage(),
    );
  }
}

class DesignSystemSamplePage extends StatelessWidget {
  const DesignSystemSamplePage({super.key});

  List<Widget> _buildAllDesignSystemComponents(BuildContext context) {
    return <Widget>[const SizedBox(height: 50)] +
        [_buildImageSlotComponents(context)] +
        _buildWippyTooltipComponents(context) +
        _buildWippyBadge() +
        _buildWippyBottomSheetComponents(context) +
        _buildWippyDropDownComponents() +
        _buildWippyHeaderComponents() +
        _buildWippyProgressbarComponents() +
        _buildWippyToastComponents(context) +
        _buildWippyPopupComponents(context) +
        _buildWippyEmptyStatesComponents(context) +
        _buildWippySpinnerComponents(context) +
        [SampleButtons()] +
        _buildWippyChipsComponents() +
        _buildWippyTextFieldComponents() +
        _buildQdsTextAreaComponents() +
        _buildWippyChatInputComponents() +
        <Widget>[const SizedBox(height: 50)] +
        _buildQdsBulletTextComponents();
  }

  List<Widget> _buildQdsBulletTextComponents() {
    return [
      QdsBulletText(
        content: "bullet text",
      ),
      QdsBulletText(content: "bullet text body16Medium", style: body16Medium.copyWith(color: wippyGray700)),
      QdsBulletText(content: "bullet text headline18Bold", style: headline18Bold.copyWith(color: wippyGray700)),
    ];
  }

  Widget _buildImageSlotComponents(BuildContext context) {
    return SizedBox(
      height: 212,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ImageSlotComponent(
            slot: PlusSlot(
              emptyIcon: const Icon(
                Icons.add_a_photo,
                color: wippyGray400,
              ),
              slotIcon: const Icon(
                Icons.add,
                color: wippyGray400,
              ),
              slotBadge: const Icon(Icons.first_page),
              onAdd: () {
                Navigator.push(
                  context,
                  ScreenSlideTransitionPage(
                    child: const ToastTestScreen(),
                    name: "ToastTestScreen",
                  ).createRoute(context),
                );
              },
            ),
            width: 160,
            height: 212,
          ),
          const SizedBox(width: 12),
          ImageSlotComponent(
            slot: EmptySlot(
              emptyIcon: const Icon(
                Icons.add_a_photo,
                color: wippyGray400,
              ),
              slotIcon: const Icon(
                Icons.add,
                color: wippyPink500,
              ),
              slotBadge: null,
            ),
            width: 160,
            height: 212,
          ),
          const SizedBox(width: 12),
          ImageSlotComponent(
            slot: RemoteFilledSlot(
              url: testProfileImageUrl,
              slotIcon: const Icon(
                Icons.edit,
                color: wippyPink500,
              ),
              slotBadge: null,
              onClick: () {
                Navigator.push(
                  context,
                  ScreenSlideTransitionPage(
                    child: const ToastTestScreen(),
                    name: "ToastTestScreen",
                  ).createRoute(context),
                );
              },
            ),
            width: 160,
            height: 212,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildWippyBadge() {
    return [
      WippyBadge(TextBadge(text: "Text", bgColor: wippyPink500, textColor: wippyWhite)),
      WippyBadge(NBadge(bgColor: wippyPink500, textColor: wippyWhite)),
      WippyBadge(NumberBadge(number: 33, bgColor: wippyPink500, textColor: wippyWhite)),
      WippyBadge(NumberBadge(number: 100, bgColor: wippyPink500, textColor: wippyWhite)),
      WippyBadge(NumberBadge(number: 1, bgColor: wippyPink500, textColor: wippyWhite)),
      WippyBadge(DotBadge(color: wippyPink500)),
    ];
  }

  List<Widget> _buildWippyBottomSheetComponents(BuildContext context) {
    return [
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'PickerBottomSheet 띄우기'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          showWippyBottomSheet(
            name: "PickerBottomSheet",
            isDismissible: true,
            context: context,
            buildBottomSheet: (context) {
              return const WippyPickerBottomSheet(
                ctaText: "Select",
                headerUiState: BottomSheetHeaderUiState(
                  title: BottomSheetHeaderTitle(
                    title: "City",
                  ),
                ),
                items: [
                  PickerItem(
                    displayName: "Tokyo",
                  ),
                  PickerItem(
                    displayName: "Minato",
                  ),
                  PickerItem(
                    displayName: "Shinjuku",
                  ),
                  PickerItem(
                    displayName: "Koto",
                  ),
                  PickerItem(
                    displayName: "Taito",
                  ),
                  PickerItem(
                    displayName: "Sumida",
                  ),
                  PickerItem(
                    displayName: "Koto",
                  )
                ],
              );
            },
          );
        },
      ),
    ];
  }

  List<Widget> _buildWippyDropDownComponents() {
    return [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippySolidDropDown(
          uiState: SolidDropDownUiState(
            label: "Label",
            placeHolder: "Text",
          ),
        ),
      ),
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippySolidDropDown(
          uiState: SolidDropDownUiState(
            label: "Label",
            selectedText: "Text",
          ),
        ),
      ),
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippyDropDown(
          uiState: DropDownUiState(
            label: "Label",
            placeHolder: "Placeholder",
          ),
        ),
      ),
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippyDropDown(
          uiState: DropDownUiState(
            label: "Label",
            selectedText: "Text",
          ),
        ),
      ),
      const SizedBox(height: 16),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippyDropDown(
          uiState: DropDownUiState(
            label: "Label",
            selectedText: "Disabled",
            enabled: false,
          ),
        ),
      ),
      const SizedBox(height: 16),
    ];
  }

  List<Widget> _buildWippyHeaderComponents() {
    return [
      const WippyHeader(
        uiState: WippyHeaderUiState(
          title: WippyHeaderTitle(text: "Page Title"),
          actions: WippyHeaderActions.singleIconAction(iconAsset: IconPath.iconMessage16),
        ),
      ),
      const WippyHeader(
        uiState: WippyHeaderUiState(
          title: WippyHeaderTitle(text: "Page Title", iconAsset: IconPath.iconMessage16, iconColor: wippyBlue500),
          actions: WippyHeaderActions.singleIconAction(iconAsset: IconPath.iconMessage16),
        ),
      )
    ];
  }

  List<Widget> _buildWippyProgressbarComponents() {
    return [Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: WippyProgressBar(0.4))];
  }

  List<Widget> _buildWippyToastComponents(BuildContext context) {
    return [
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Go to Toast Test Page'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          Navigator.push(
            context,
            ScreenSlideTransitionPage(
              child: const ToastTestScreen(),
              name: "ToastTestScreen",
            ).createRoute(context),
          );
        },
      )
    ];
  }

  List<Widget> _buildWippyPopupComponents(BuildContext context) {
    return [
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Show Image Popup'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return WippyPopup(
                uiState: WippyPopupUiState(
                  popupImageType: PopupImageType.network(
                    imageUrl: testProfileImageUrl,
                    isCircle: true,
                    width: 80,
                    height: 80,
                    boxFit: BoxFit.cover,
                  ),
                  title: 'Title',
                  description: 'Description',
                  popupButtonType: PopupButtonType.singleButton(
                    label: 'Close',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Show SingleButton Popup'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return WippyPopup(
                  uiState: WippyPopupUiState(
                      title: 'Title',
                      description: 'Description',
                      popupButtonType: PopupButtonType.singleButton(
                          label: 'Close',
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                );
              });
        },
      ),
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Show MultiButton Popup'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return WippyPopup(
                    uiState: WippyPopupUiState(
                  title: 'Request Friend?',
                  popupButtonType: PopupButtonType.multiButton(
                      leftButtonLabel: 'No',
                      onPressedLeftButton: () {
                        Navigator.pop(context);
                      },
                      rightButtonLabel: 'Yes'),
                ));
              });
        },
      )
    ];
  }

  List<Widget> _buildWippyEmptyStatesComponents(BuildContext context) {
    return [
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Go to Empty States Page'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          Navigator.push(
            context,
            ScreenSlideTransitionPage(
              child: const EmptyStatesTestScreen(),
              name: "EmptyStatesTestScreen",
            ).createRoute(context),
          );
        },
      )
    ];
  }

  List<Widget> _buildWippySpinnerComponents(BuildContext context) {
    return [
      WippySpinner(),
      QdsBoxButton(
        initUiState: QdsBoxButtonUiState(
          buttonColorType: const QdsBoxButtonColorType.primary(),
          buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Go to Dimmed Loading Page'),
          buttonSizeType: QdsBoxButtonSizeType.large(),
        ),
        onPressed: () {
          Navigator.push(
            context,
            ScreenSlideTransitionPage(
              child: const DimmedLoadingTestScreen(),
              name: "DimmedLoadingTestScreen",
            ).createRoute(context),
          );
        },
      )
    ];
  }

  List<Widget> _buildQdsTextAreaComponents() {
    return [
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Disable State",
          state: TextInputState.disable,
          placeholder: "Hint",
          textInputAction: TextInputAction.done,
        ),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "set maxCount",
          maxCount: 10,
          helperMessage: "Helper Message",
          placeholder: "Hint",
          textInputAction: TextInputAction.done,
        ),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Error State",
          errorState: TextInputErrorState.error(errorMessage: "Error Message"),
          maxCount: 10,
          placeholder: "Hint",
          inputType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
        ),
      ),
    ];
  }

  List<Widget> _buildWippyTextFieldComponents() {
    return [
      WippyTextField(initialData: const TextFieldInitialData(label: "Label", helperMessage: "Helper Message", placeholder: "Hint")),
      WippyTextField(initialData: const TextFieldInitialData(label: "set maxCount", maxCount: 10, placeholder: "Hint")),
      WippyTextField(
          initialData: const TextFieldInitialData(
              label: "Error State", errorState: TextInputErrorState.error(errorMessage: "Error Message"), maxCount: 10, placeholder: "Hint")),
      WippyTextField(initialData: const TextFieldInitialData(label: "Disable State", state: TextInputState.disable, placeholder: "Hint")),
    ];
  }

  List<Widget> _buildWippyChatInputComponents() {
    return [
      ChatInput(
        onUpdatedMessage: (message) {
          debugPrint(message);
        },
        onClickSend: (message) {
          debugPrint(message);
        },
        placeHolder: "Enter Message",
      ),
    ];
  }

  List<Widget> _buildWippyChipsComponents() {
    return [
      WippySingleSelectiveChips(
        onSelected: (_) {},
        chipsUiState: const SingleSelectiveChipsUiState(
          chips: [
            SingleSelectiveChipUiState(
              chipUiProperties: ChipUiProperties(
                label: "Label",
              ),
              isSelected: false,
            ),
          ],
          sizeType: SingleSelectiveChipSizeType.large,
        ),
      ),
      WippySingleSelectiveChips(
        onSelected: (_) {},
        chipsUiState: const SingleSelectiveChipsUiState(
          chips: [
            SingleSelectiveChipUiState(
              chipUiProperties: ChipUiProperties(label: "Male"),
              isSelected: true,
            ),
            SingleSelectiveChipUiState(
              chipUiProperties: ChipUiProperties(label: "Female"),
              isSelected: false,
            ),
          ],
          sizeType: SingleSelectiveChipSizeType.regular,
        ),
      ),
      WippyMultiSelectiveChips(
        onSelected: (_) {},
        chipsUiState: const MultiSelectiveChipsUiState(
          chips: [
            MultiSelectiveChipUiState.normal(
              chipUiProperties: ChipUiProperties(label: "Soccer"),
              isSelected: true,
            ),
            MultiSelectiveChipUiState.normal(
              chipUiProperties: ChipUiProperties(label: "Baseball"),
              isSelected: false,
            ),
            MultiSelectiveChipUiState.normal(
              chipUiProperties: ChipUiProperties(label: "Badminton"),
              isSelected: false,
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Design System App', style: headline20Bold)),
      body: ListView(children: _buildAllDesignSystemComponents(context).intersperse(const SizedBox(height: 10))),
    );
  }
}

List<Widget> _buildWippyTooltipComponents(BuildContext context) {
  return [
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message",
        arrowPosition: TooltipArrowPosition.leftTop,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
        arrowOffset: 30,
        visible: true,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message",
        arrowPosition: TooltipArrowPosition.leftTop,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
        arrowOffset: 30,
        visible: false,
      ),
      onClickTooltip: () {},
    ),
  ];
}

extension ListExtensions<T> on List<T> {
  List<T> intersperse(T element) {
    if (isEmpty) {
      return [];
    }

    List<T> result = [];
    for (int i = 0; i < length; i++) {
      result.add(this[i]);
      if (i < length - 1) {
        result.add(element);
      }
    }
    return result;
  }
}
