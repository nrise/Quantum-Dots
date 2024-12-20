import 'package:quantum_dots/quantum_dots.dart';

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
                ctaText: "선택",
                headerUiState: BottomSheetHeaderUiState(
                  title: BottomSheetHeaderTitle(
                    title: "시구정촌",
                  ),
                ),
                items: [
                  PickerItem(
                    displayName: "지요다 구",
                  ),
                  PickerItem(
                    displayName: "미나토 구",
                  ),
                  PickerItem(
                    displayName: "신주쿠 구",
                  ),
                  PickerItem(
                    displayName: "분쿄 구",
                  ),
                  PickerItem(
                    displayName: "다이토 구",
                  ),
                  PickerItem(
                    displayName: "스미다 구",
                  ),
                  PickerItem(
                    displayName: "고토 구",
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
        child: WippyDropDown(
          uiState: DropDownUiState(
            label: "라벨이요",
            placeHolder: "플레이스 홀더",
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippyDropDown(
          uiState: DropDownUiState(
            label: "라벨이요",
            selectedText: "텍스트",
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: WippyDropDown(
          uiState: DropDownUiState(
            label: "라벨이요",
            selectedText: "디스에이블",
            enabled: false,
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
    ];
  }

  List<Widget> _buildWippyHeaderComponents() {
    return [
      const WippyHeader(
        uiState: WippyHeaderUiState(
          title: WippyHeaderTitle(text: "페이지 타이틀"),
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
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Toast Test 페이지로 가기'),
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
                      title: '제목이요',
                      description: '내용입니다~~~~~~ 길게길게길게\n하이하이',
                      popupButtonType: PopupButtonType.singleButton(
                          label: '닫기',
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                );
              });
        },
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'SingleButton Popup 띄우기'),
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
                  title: '친구 요청을 할까요?',
                  popupButtonType: PopupButtonType.multiButton(
                      leftButtonLabel: '아니용',
                      onPressedLeftButton: () {
                        Navigator.pop(context);
                      },
                      rightButtonLabel: '넵'),
                ));
              });
        },
        initUiState: ButtonUiState(
            buttonColorType: const ButtonColorType.primary(),
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'MultiButton Popup 띄우기'),
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
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Empty States 페이지로 가기'),
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
            buttonLabelType: const ButtonLabelType.labelOnly(label: 'Dimmed Loading 페이지로 가기'),
            buttonSizeType: ButtonSizeType.large()),
      )
    ];
  }

  List<Widget> _buildWippyTextAreaComponents() {
    return [
      WippyTextArea(initialData: const TextAreaInitialData(label: "Disable 상태", state: TextInputState.disable, placeholder: "힌트입니다")),
      WippyTextArea(initialData: const TextAreaInitialData(label: "set maxCount", maxCount: 10, helperMessage: "도움말이에요", placeholder: "힌트입니다")),
      WippyTextArea(
          initialData: const TextAreaInitialData(
              label: "Error 상태", errorState: TextInputErrorState.error(errorMessage: "에러임다"), maxCount: 10, placeholder: "힌트입니다")),
    ];
  }

  List<Widget> _buildWippyTextFieldComponents() {
    return [
      WippyTextField(initialData: const TextFieldInitialData(label: "라벨", helperMessage: "도움말이에요", placeholder: "힌트입니다")),
      WippyTextField(initialData: const TextFieldInitialData(label: "set maxCount", maxCount: 10, placeholder: "힌트입니다")),
      WippyTextField(
          initialData: const TextFieldInitialData(
              label: "Error 상태", errorState: TextInputErrorState.error(errorMessage: "에러임다"), maxCount: 10, placeholder: "힌트입니다")),
      WippyTextField(initialData: const TextFieldInitialData(label: "Disable 상태", state: TextInputState.disable, placeholder: "힌트입니다")),
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
        placeHolder: "메시지를 입력해주세요",
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
                label: "라벨",
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
              chipUiProperties: ChipUiProperties(label: "남자"),
              isSelected: true,
            ),
            SingleSelectiveChipUiState(
              chipUiProperties: ChipUiProperties(label: "여자"),
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
              chipUiProperties: ChipUiProperties(label: "축구"),
              isSelected: true,
            ),
            MultiSelectiveChipUiState.normal(
              chipUiProperties: ChipUiProperties(label: "야구"),
              isSelected: false,
            ),
            MultiSelectiveChipUiState.normal(
              chipUiProperties: ChipUiProperties(label: "배드민턴"),
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
