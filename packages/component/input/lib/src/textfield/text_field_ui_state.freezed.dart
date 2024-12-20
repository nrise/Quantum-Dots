// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_field_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextFieldUiState {
  String? get label => throw _privateConstructorUsedError;
  String? get helperMessage => throw _privateConstructorUsedError;
  String? get placeholder => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  int get maxLine => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  TextInputType? get inputType => throw _privateConstructorUsedError;
  TextInputFocusState get focusState => throw _privateConstructorUsedError;
  TextInputErrorState get errorState => throw _privateConstructorUsedError;
  TextInputState get state => throw _privateConstructorUsedError;
  bool get needToBlockOverflowInput => throw _privateConstructorUsedError;

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextFieldUiStateCopyWith<TextFieldUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldUiStateCopyWith<$Res> {
  factory $TextFieldUiStateCopyWith(
          TextFieldUiState value, $Res Function(TextFieldUiState) then) =
      _$TextFieldUiStateCopyWithImpl<$Res, TextFieldUiState>;
  @useResult
  $Res call(
      {String? label,
      String? helperMessage,
      String? placeholder,
      int? maxCount,
      int maxLine,
      String text,
      TextInputType? inputType,
      TextInputFocusState focusState,
      TextInputErrorState errorState,
      TextInputState state,
      bool needToBlockOverflowInput});

  $TextInputFocusStateCopyWith<$Res> get focusState;
  $TextInputErrorStateCopyWith<$Res> get errorState;
}

/// @nodoc
class _$TextFieldUiStateCopyWithImpl<$Res, $Val extends TextFieldUiState>
    implements $TextFieldUiStateCopyWith<$Res> {
  _$TextFieldUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? helperMessage = freezed,
    Object? placeholder = freezed,
    Object? maxCount = freezed,
    Object? maxLine = null,
    Object? text = null,
    Object? inputType = freezed,
    Object? focusState = null,
    Object? errorState = null,
    Object? state = null,
    Object? needToBlockOverflowInput = null,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      helperMessage: freezed == helperMessage
          ? _value.helperMessage
          : helperMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLine: null == maxLine
          ? _value.maxLine
          : maxLine // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      inputType: freezed == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      focusState: null == focusState
          ? _value.focusState
          : focusState // ignore: cast_nullable_to_non_nullable
              as TextInputFocusState,
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as TextInputErrorState,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TextInputState,
      needToBlockOverflowInput: null == needToBlockOverflowInput
          ? _value.needToBlockOverflowInput
          : needToBlockOverflowInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextInputFocusStateCopyWith<$Res> get focusState {
    return $TextInputFocusStateCopyWith<$Res>(_value.focusState, (value) {
      return _then(_value.copyWith(focusState: value) as $Val);
    });
  }

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextInputErrorStateCopyWith<$Res> get errorState {
    return $TextInputErrorStateCopyWith<$Res>(_value.errorState, (value) {
      return _then(_value.copyWith(errorState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextFieldUiStateImplCopyWith<$Res>
    implements $TextFieldUiStateCopyWith<$Res> {
  factory _$$TextFieldUiStateImplCopyWith(_$TextFieldUiStateImpl value,
          $Res Function(_$TextFieldUiStateImpl) then) =
      __$$TextFieldUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      String? helperMessage,
      String? placeholder,
      int? maxCount,
      int maxLine,
      String text,
      TextInputType? inputType,
      TextInputFocusState focusState,
      TextInputErrorState errorState,
      TextInputState state,
      bool needToBlockOverflowInput});

  @override
  $TextInputFocusStateCopyWith<$Res> get focusState;
  @override
  $TextInputErrorStateCopyWith<$Res> get errorState;
}

/// @nodoc
class __$$TextFieldUiStateImplCopyWithImpl<$Res>
    extends _$TextFieldUiStateCopyWithImpl<$Res, _$TextFieldUiStateImpl>
    implements _$$TextFieldUiStateImplCopyWith<$Res> {
  __$$TextFieldUiStateImplCopyWithImpl(_$TextFieldUiStateImpl _value,
      $Res Function(_$TextFieldUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? helperMessage = freezed,
    Object? placeholder = freezed,
    Object? maxCount = freezed,
    Object? maxLine = null,
    Object? text = null,
    Object? inputType = freezed,
    Object? focusState = null,
    Object? errorState = null,
    Object? state = null,
    Object? needToBlockOverflowInput = null,
  }) {
    return _then(_$TextFieldUiStateImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      helperMessage: freezed == helperMessage
          ? _value.helperMessage
          : helperMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLine: null == maxLine
          ? _value.maxLine
          : maxLine // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      inputType: freezed == inputType
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      focusState: null == focusState
          ? _value.focusState
          : focusState // ignore: cast_nullable_to_non_nullable
              as TextInputFocusState,
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as TextInputErrorState,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TextInputState,
      needToBlockOverflowInput: null == needToBlockOverflowInput
          ? _value.needToBlockOverflowInput
          : needToBlockOverflowInput // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TextFieldUiStateImpl implements _TextFieldUiState {
  const _$TextFieldUiStateImpl(
      {this.label = null,
      this.helperMessage = null,
      this.placeholder = null,
      this.maxCount = null,
      this.maxLine = 1,
      this.text = "",
      this.inputType = null,
      this.focusState = const TextInputFocusState.focusout(),
      this.errorState = const TextInputErrorState.none(),
      this.state = TextInputState.inactive,
      this.needToBlockOverflowInput = false});

  @override
  @JsonKey()
  final String? label;
  @override
  @JsonKey()
  final String? helperMessage;
  @override
  @JsonKey()
  final String? placeholder;
  @override
  @JsonKey()
  final int? maxCount;
  @override
  @JsonKey()
  final int maxLine;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final TextInputType? inputType;
  @override
  @JsonKey()
  final TextInputFocusState focusState;
  @override
  @JsonKey()
  final TextInputErrorState errorState;
  @override
  @JsonKey()
  final TextInputState state;
  @override
  @JsonKey()
  final bool needToBlockOverflowInput;

  @override
  String toString() {
    return 'TextFieldUiState(label: $label, helperMessage: $helperMessage, placeholder: $placeholder, maxCount: $maxCount, maxLine: $maxLine, text: $text, inputType: $inputType, focusState: $focusState, errorState: $errorState, state: $state, needToBlockOverflowInput: $needToBlockOverflowInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldUiStateImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.helperMessage, helperMessage) ||
                other.helperMessage == helperMessage) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.maxLine, maxLine) || other.maxLine == maxLine) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.inputType, inputType) ||
                other.inputType == inputType) &&
            (identical(other.focusState, focusState) ||
                other.focusState == focusState) &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(
                    other.needToBlockOverflowInput, needToBlockOverflowInput) ||
                other.needToBlockOverflowInput == needToBlockOverflowInput));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      helperMessage,
      placeholder,
      maxCount,
      maxLine,
      text,
      inputType,
      focusState,
      errorState,
      state,
      needToBlockOverflowInput);

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldUiStateImplCopyWith<_$TextFieldUiStateImpl> get copyWith =>
      __$$TextFieldUiStateImplCopyWithImpl<_$TextFieldUiStateImpl>(
          this, _$identity);
}

abstract class _TextFieldUiState implements TextFieldUiState {
  const factory _TextFieldUiState(
      {final String? label,
      final String? helperMessage,
      final String? placeholder,
      final int? maxCount,
      final int maxLine,
      final String text,
      final TextInputType? inputType,
      final TextInputFocusState focusState,
      final TextInputErrorState errorState,
      final TextInputState state,
      final bool needToBlockOverflowInput}) = _$TextFieldUiStateImpl;

  @override
  String? get label;
  @override
  String? get helperMessage;
  @override
  String? get placeholder;
  @override
  int? get maxCount;
  @override
  int get maxLine;
  @override
  String get text;
  @override
  TextInputType? get inputType;
  @override
  TextInputFocusState get focusState;
  @override
  TextInputErrorState get errorState;
  @override
  TextInputState get state;
  @override
  bool get needToBlockOverflowInput;

  /// Create a copy of TextFieldUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFieldUiStateImplCopyWith<_$TextFieldUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
