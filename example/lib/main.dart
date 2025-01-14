import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_badge.dart';
import 'package:quantum_dots/qds_bottom_sheet.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_chips.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_header.dart';
import 'package:quantum_dots/qds_input.dart';
import 'package:quantum_dots/qds_popup.dart';
import 'package:quantum_dots/qds_progress.dart';
import 'package:quantum_dots/qds_spinner.dart';

import 'dimmed_loading_test_screen.dart';
import 'empty_states_test_screen.dart';
import 'toast_test_screen.dart';

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
        _buildWippyBadge() +
        _buildWippyBottomSheetComponents(context) +
        _buildWippyDropDownComponents() +
        _buildWippyHeaderComponents() +
        _buildWippyProgressbarComponents() +
        _buildWippyToastComponents(context) +
        _buildWippyPopupComponents(context) +
        _buildWippyEmptyStatesComponents(context) +
        _buildWippySpinnerComponents(context) +
        _buildWippyBoxButtonComponents() +
        _buildWippyChipsComponents() +
        _buildWippyTextFieldComponents() +
        _buildWippyTextAreaComponents() +
        _buildWippyChatInputComponents() +
        <Widget>[const SizedBox(height: 50)];
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
      WippyBoxButton(
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
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'PickerBottomSheet 띄우기'),
            buttonSizeType: ButtonSizeType.large()),
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
      )
    ];
  }

  List<Widget> _buildWippyProgressbarComponents() {
    return [Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: WippyProgressBar(0.4))];
  }

  List<Widget> _buildWippyToastComponents(BuildContext context) {
    return [
      WippyBoxButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ToastTestScreen()));
        },
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Go to Toast Test Page'),
            buttonSizeType: ButtonSizeType.large()),
      )
    ];
  }

  List<Widget> _buildWippyPopupComponents(BuildContext context) {
    return [
      WippyBoxButton(
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
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Show SingleButton Popup'),
            buttonSizeType: ButtonSizeType.large()),
      ),
      WippyBoxButton(
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
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Show MultiButton Popup'),
            buttonSizeType: ButtonSizeType.large()),
      )
    ];
  }

  List<Widget> _buildWippyEmptyStatesComponents(BuildContext context) {
    return [
      WippyBoxButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const EmptyStatesTestScreen()));
        },
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Go to Empty States Page'),
            buttonSizeType: ButtonSizeType.large()),
      )
    ];
  }

  List<Widget> _buildWippySpinnerComponents(BuildContext context) {
    return [
      WippySpinner(),
      WippyBoxButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DimmedLoadingTestScreen()));
        },
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Go to Dimmed Loading Page'),
            buttonSizeType: ButtonSizeType.large()),
      )
    ];
  }

  List<Widget> _buildWippyTextAreaComponents() {
    return [
      WippyTextArea(initialData: const TextAreaInitialData(label: "Disable State", state: TextInputState.disable, placeholder: "Hint")),
      WippyTextArea(
          initialData: const TextAreaInitialData(label: "set maxCount", maxCount: 10, helperMessage: "Helper Message", placeholder: "Hint")),
      WippyTextArea(
          initialData: const TextAreaInitialData(
              label: "Error State", errorState: TextInputErrorState.error(errorMessage: "Error Message"), maxCount: 10, placeholder: "Hint")),
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

  List<Widget> _buildWippyBoxButtonComponents() {
    return [
      Wrap(
        children: [
          WippyBoxButton(
            onPressed: () {},
            initUiState: ButtonUiState(
                buttonColorType: const ButtonColorType.primary(),
                buttonLabelType: const ButtonLabelType.labelOnly(label: 'Wrap'),
                buttonSizeType: ButtonSizeType.large()),
          )
        ],
      ),
      WippyBoxButton(
        onPressed: () {},
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Match'),
            buttonSizeType: ButtonSizeType.large()),
      )
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
