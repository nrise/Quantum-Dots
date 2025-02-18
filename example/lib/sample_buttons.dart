import 'package:flutter/widgets.dart';
import 'package:quantum_dots/qds_button.dart';

class SampleButtons extends StatefulWidget {
  const SampleButtons({super.key});

  @override
  State<SampleButtons> createState() => _SampleButtonsState();
}

class _SampleButtonsState extends State<SampleButtons> {
  double _progress = 0.4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            QdsBoxButton(
              initUiState: QdsBoxButtonUiState(
                  buttonColorType: const QdsBoxButtonColorType.primary(),
                  buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Wrap'),
                  buttonSizeType: QdsBoxButtonSizeType.large()),
            )
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: QdsBoxButton(
            initUiState: QdsBoxButtonUiState(
              buttonColorType: const QdsBoxButtonColorType.primary(),
              buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Match'),
              buttonSizeType: QdsBoxButtonSizeType.large(),
            ),
          ),
        ),
        const SizedBox(height: 16),
        QdsBoxButton(
          initUiState: QdsBoxButtonUiState(
              buttonColorType: const QdsBoxButtonColorType.primary(),
              buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'debounceTime 200'),
              buttonSizeType: QdsBoxButtonSizeType.large(),
              debounceTime: 200),
          onPressed: () {
            debugPrint('debounceTime 200');
          },
        ),
        const SizedBox(height: 16),
        QdsBoxButton(
          initUiState: QdsBoxButtonUiState(
            buttonColorType: const QdsBoxButtonColorType.primary(),
            buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'debounceTime Default(400)'),
            buttonSizeType: QdsBoxButtonSizeType.large(),
          ),
          onPressed: () {
            debugPrint('debounceTime Default(400)');
          },
        ),
        const SizedBox(height: 16),
        QdsBoxButton(
          initUiState: QdsBoxButtonUiState(
            buttonColorType: const QdsBoxButtonColorType.primary(),
            buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'debounceTime 800'),
            buttonSizeType: QdsBoxButtonSizeType.large(),
            debounceTime: 800,
          ),
          onPressed: () {
            debugPrint('debounceTime 800');
          },
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: QdsBoxButton(
            initUiState: QdsBoxButtonUiState(
              buttonColorType: const QdsBoxButtonColorType.primary(),
              buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: 'Progress'),
              buttonSizeType: QdsBoxButtonSizeType.large(),
              state: QdsBoxButtonState.progress(progress: _progress),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: QdsBoxButton(
                  initUiState: QdsBoxButtonUiState(
                    buttonColorType: const QdsBoxButtonColorType.secondary(),
                    buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: '-10%'),
                    buttonSizeType: QdsBoxButtonSizeType.medium(),
                  ),
                  onPressed: () {
                    setState(() {
                      _progress = (_progress - 0.1).clamp(0.0, 1.0);
                    });
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: QdsBoxButton(
                  initUiState: QdsBoxButtonUiState(
                    buttonColorType: const QdsBoxButtonColorType.secondary(),
                    buttonLabelType: const QdsBoxButtonLabelType.labelOnly(label: '+10%'),
                    buttonSizeType: QdsBoxButtonSizeType.medium(),
                  ),
                  onPressed: () {
                    setState(() {
                      _progress = (_progress + 0.1).clamp(0.0, 1.0);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
