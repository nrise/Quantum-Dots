import 'package:flutter/material.dart';
import 'package:quantum_dots/qds_badge.dart';
import 'package:quantum_dots/qds_bottom_sheet.dart';
import 'package:quantum_dots/qds_button.dart';
import 'package:quantum_dots/qds_chips.dart';
import 'package:quantum_dots/qds_common_widget.dart';
import 'package:quantum_dots/qds_foundation.dart';
import 'package:quantum_dots/qds_guide.dart';
import 'package:quantum_dots/qds_header.dart';
import 'package:quantum_dots/qds_input.dart';
import 'package:quantum_dots/qds_page_route.dart';
import 'package:quantum_dots/qds_popup.dart';
import 'package:quantum_dots/qds_profile_card_grid.dart';
import 'package:quantum_dots/qds_profile_card_portrait_medium.dart';
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
        _buildTooltipModalDetectionTest(context) +
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
        _buildQdsBulletTextComponents() +
        _buildQdsProfileCardGridComponents() +
        _buildQdsGuideComponents() +
        _buildQdsProfileCardPortraitMediumComponents() +
        <Widget>[const SizedBox(height: 50)];
  }

  List<Widget> _buildQdsBulletTextComponents() {
    return [
      QdsBulletText(
        content: "bullet text",
      ),
      QdsBulletText(content: "bullet text body16Medium", style: body16Medium.copyWith(color: wippyGray700)),
      QdsBulletText(content: "bullet text headline18Bold", style: headline18Bold.copyWith(color: wippyGray700)),
      QdsBulletText(content: "bullet text headline18Bold\n multiple line", style: headline18Bold.copyWith(color: wippyGray700)),
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
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Highlighted Text Area (Pink 배경색)",
          text: "이것은 wippyPink300 배경색이 적용된 텍스트입니다.",
          placeholder: "형광펜 효과가 적용된 텍스트를 입력해보세요",
          helperMessage: "wippyPink300 배경색으로 하이라이팅됩니다",
          backgroundColor: wippyPink300,
          textInputAction: TextInputAction.done,
        ),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Fixed Height (200px)",
          placeholder: "이 텍스트 영역은 200px 고정 높이입니다",
          helperMessage: "QdsTextAreaHeightTypeFixed(height: 200)",
          textInputAction: TextInputAction.done,
        ),
        heightType: const QdsTextAreaHeightTypeFixed(height: 200),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Fixed Height (100px)",
          placeholder: "이 텍스트 영역은 100px 고정 높이입니다",
          helperMessage: "QdsTextAreaHeightTypeFixed(height: 100)",
          textInputAction: TextInputAction.done,
        ),
        heightType: const QdsTextAreaHeightTypeFixed(height: 100),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Dynamic Height",
          placeholder: "이 텍스트 영역은 내용에 따라 높이가 자동으로 조절됩니다. 여러 줄을 입력해보세요!",
          helperMessage: "QdsTextAreaHeightTypeDynamic() - 내용에 따라 높이 자동 조절",
          inputType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
        ),
        heightType: const QdsTextAreaHeightTypeDynamic(minHeight: 132),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Dynamic Height with Min Height (150px)",
          placeholder: "이 텍스트 영역은 최소 150px 높이를 가지며, 내용에 따라 높이가 늘어납니다.",
          helperMessage: "QdsTextAreaHeightTypeDynamic(minHeight: 150) - 최소 높이 150px",
          inputType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
        ),
        heightType: const QdsTextAreaHeightTypeDynamic(minHeight: 150),
      ),
      QdsTextArea(
        initialData: const TextAreaInitialData(
          label: "Large Fixed Height (300px)",
          text: "큰 고정 높이를 가진 텍스트 영역입니다.\n\n여러 줄의 텍스트를 입력할 수 있는 충분한 공간이 제공됩니다.\n\n높이는 300px로 고정되어 있습니다.",
          placeholder: "300px 높이의 넓은 텍스트 영역",
          helperMessage: "QdsTextAreaHeightTypeFixed(height: 300)",
          inputType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
        ),
        heightType: const QdsTextAreaHeightTypeFixed(height: 300),
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
      ChatInput(
        onUpdatedMessage: (message) {
          debugPrint(message);
        },
        onClickSend: (message) {
          debugPrint(message);
        },
        placeHolder: "Enter Message custom icon",
        sendButtonIconPath: IconPath.iconDm,
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
        message: "Tooltip Message \n downRight",
        placement: TooltipPlacement.downRight,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n downCenter",
        placement: TooltipPlacement.downCenter,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n downLeft",
        placement: TooltipPlacement.downLeft,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n upRight",
        placement: TooltipPlacement.upRight,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n upCenter",
        placement: TooltipPlacement.upCenter,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n upLeft",
        placement: TooltipPlacement.upLeft,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n rightCenter",
        placement: TooltipPlacement.rightCenter,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message \n leftCenter",
        placement: TooltipPlacement.leftCenter,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
      ),
      onClickTooltip: () {},
    ),
    TooltipComponent(
      uiState: TooltipUiState(
        message: "Tooltip Message over max width 30 test ipsum dolor sit amet dfasdfasdf",
        placement: TooltipPlacement.leftCenter,
        textColor: wippyWhite,
        backgroundColor: wippyGray800,
        maxWidth: 30,
      ),
      onClickTooltip: () {},
    ),
  ];
}

List<Widget> _buildTooltipModalDetectionTest(BuildContext context) {
  return [
    const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Tooltip Modal Detection Test',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Tooltips below should hide when popup/bottom sheet is shown and reappear when dismissed:',
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    ),
    const SizedBox(height: 16),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        QdsBalloonTooltipComponent(
          isVisible: true,
          uiState: TooltipUiState(
            message: "I should hide when\ndialog opens!",
            placement: TooltipPlacement.upCenter,
            textColor: wippyWhite,
            backgroundColor: wippyBlue500,
          ),
          child: QdsBoxButton(
            initUiState: QdsBoxButtonUiState(
              buttonColorType: const QdsBoxButtonColorType.secondary(),
              buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Show Dialog'),
              buttonSizeType: QdsBoxButtonSizeType.small(),
            ),
            onPressed: () {
              showDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) {
                  return WippyPopup(
                    uiState: WippyPopupUiState(
                      title: 'Dialog Test',
                      description: 'Tooltip should be hidden now!',
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
        ),
        // Tooltip + BottomSheet Test
        QdsBalloonTooltipComponent(
          isVisible: true,
          uiState: TooltipUiState(
            message: "I should hide when\nbottom sheet opens!",
            placement: TooltipPlacement.upCenter,
            textColor: wippyWhite,
            backgroundColor: wippyPink500,
          ),
          child: QdsBoxButton(
            initUiState: QdsBoxButtonUiState(
              buttonColorType: const QdsBoxButtonColorType.primary(),
              buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Show BottomSheet'),
              buttonSizeType: QdsBoxButtonSizeType.small(),
            ),
            onPressed: () {
              showWippyBottomSheet(
                name: "TooltipTestBottomSheet",
                isDismissible: true,
                context: context,
                buildBottomSheet: (context) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'BottomSheet Test',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        const Text('Tooltip should be hidden now!'),
                        const SizedBox(height: 20),
                        QdsBoxButton(
                          initUiState: QdsBoxButtonUiState(
                            buttonColorType: const QdsBoxButtonColorType.primary(),
                            buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Close'),
                            buttonSizeType: QdsBoxButtonSizeType.large(),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    ),
    const SizedBox(height: 20),
    // Additional test with different placements
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        QdsBalloonTooltipComponent(
          isVisible: true,
          uiState: TooltipUiState(
            message: "Left tooltip test",
            placement: TooltipPlacement.rightCenter,
            textColor: wippyWhite,
            backgroundColor: wippyBlue500,
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: wippyGray100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text('Hover me (left tooltip)'),
          ),
        ),
        QdsBalloonTooltipComponent(
          isVisible: true,
          uiState: TooltipUiState(
            message: "Right tooltip test",
            placement: TooltipPlacement.leftCenter,
            textColor: wippyWhite,
            backgroundColor: wippyGray800,
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: wippyGray100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text('Hover me (right tooltip)'),
          ),
        ),
      ],
    ),
    const SizedBox(height: 16),
  ];
}

List<Widget> _buildQdsProfileCardGridComponents() {
  return [
    SizedBox(
      height: 212,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          QdsProfileCardGrid(
            uiState: QdsProfileCardUiState(
              title: "Full",
              ekycVerified: true,
              imageUrl: testProfileImageUrl,
              onTap: () {},
              description: "Description",
              dateTimePast: "2025-05-19",
              buttonUiState: QdsBoxButtonUiState(
                buttonColorType: const QdsBoxButtonColorType.primary(),
                buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Button'),
                buttonSizeType: QdsBoxButtonSizeType.small(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          QdsProfileCardGrid(
            uiState: QdsProfileCardUiState(
              title: "without description",
              dateTimePast: "2025-05-19",
              ekycVerified: true,
              imageUrl: testProfileImageUrl,
              onTap: () {},
              buttonUiState: QdsBoxButtonUiState(
                buttonColorType: const QdsBoxButtonColorType.primary(),
                buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Button'),
                buttonSizeType: QdsBoxButtonSizeType.small(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          QdsProfileCardGrid(
            uiState: QdsProfileCardUiState(
              title: "without description and timePast",
              ekycVerified: true,
              imageUrl: testProfileImageUrl,
              onTap: () {},
              buttonUiState: QdsBoxButtonUiState(
                buttonColorType: const QdsBoxButtonColorType.primary(),
                buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Button'),
                buttonSizeType: QdsBoxButtonSizeType.small(),
              ),
            ),
          ),
          const SizedBox(width: 12),
          QdsProfileCardGrid(
            uiState: QdsProfileCardUiState(
              title: "without button",
              ekycVerified: true,
              imageUrl: testProfileImageUrl,
              onTap: () {},
              buttonUiState: null,
            ),
          ),
        ],
      ),
    ),
  ];
}

List<Widget> _buildQdsGuideComponents() {
  return [
    const QdsGuide(text: "Guide Message"),
    const QdsGuide(
        text: "Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 "),
    const QdsGuide(
        text: "Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 Guide Message 2 ",
        emojiText: "👀"),
  ];
}

List<Widget> _buildQdsProfileCardPortraitMediumComponents() {
  return [
    SizedBox(
      height: 267,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          QdsProfileCardPortraitMedium(
            uiState: QdsProfileCardPortraitMediumUiState(
              imageUrl: testProfileImageUrl,
              ekycVerified: true,
              nicknameWithAge: "닉네임, 24",
              dateTimeLeft: "⏱️ 1일 후 사라짐",
              topInfoTitle: "💌 DM이 도착했어요!",
              topInfoMessage: "분위기가 좋으셔서 용기내어 메세지 보냈습니다. 대화할 수 있으면 좋겠...",
              blurSigma: 0,
              leftButtonColorType: const QdsBoxButtonColorType.tertiary(),
              leftButtonLabelType: const QdsBoxButtonLabelType.labelOnly(label: '삭제'),
              rightButtonColorType: const QdsBoxButtonColorType.primary(),
              rightButtonLabelType: const QdsBoxButtonLabelType.labelAndIcon(label: '보기', iconAssetString: IconPath.iconDm),
              onClickLeftButton: () {},
              onClickRightButton: () {},
            ),
          ),
          const SizedBox(width: 12),
          QdsProfileCardPortraitMedium(
            uiState: QdsProfileCardPortraitMediumUiState(
              imageUrl: "https://ichef.bbci.co.uk/news/800/cpsprodpb/14235/production/_100058428_mediaitem100058424.jpg.webp",
              ekycVerified: true,
              nicknameWithAge: "닉네임, 24",
              dateTimeLeft: "⏱️ 1일 후 사라짐",
              topInfoTitle: "💌 DM이 도착했어요!",
              topInfoMessage: "분위기가 좋으셔서 용기내어 메세지 보냈습니다. 대화할 수 있으면 좋겠...",
              blurSigma: 5,
              leftButtonColorType: const QdsBoxButtonColorType.tertiary(),
              leftButtonLabelType: const QdsBoxButtonLabelType.labelOnly(label: '삭제'),
              rightButtonColorType: const QdsBoxButtonColorType.primary(),
              rightButtonLabelType: const QdsBoxButtonLabelType.labelAndIcon(label: '보기', iconAssetString: IconPath.iconDm),
              onClickLeftButton: () {},
              onClickRightButton: () {},
            ),
          ),
          const SizedBox(width: 12),
          QdsProfileCardPortraitMedium(
            uiState: QdsProfileCardPortraitMediumUiState(
              imageUrl: "https://ichef.bbci.co.uk/news/800/cpsprodpb/14235/production/_100058428_mediaitem100058424.jpg.webp",
              ekycVerified: true,
              nicknameWithAge: "닉네임, 24",
              dateTimeLeft: "⏱️ 1일 후 사라짐",
              topInfoTitle: "💌 DM이 도착했어요!",
              topInfoMessage: "분위기가 좋으셔서 용기내어 메세지 보냈습니다. 대화할 수 있으면 좋겠...",
              blurSigma: 20,
              leftButtonColorType: const QdsBoxButtonColorType.tertiary(),
              leftButtonLabelType: const QdsBoxButtonLabelType.labelOnly(label: '삭제'),
              rightButtonColorType: const QdsBoxButtonColorType.primary(),
              rightButtonLabelType: const QdsBoxButtonLabelType.labelAndIcon(label: '보기', iconAssetString: IconPath.iconDm),
              onClickLeftButton: () {},
              onClickRightButton: () {},
            ),
          ),
        ],
      ),
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
