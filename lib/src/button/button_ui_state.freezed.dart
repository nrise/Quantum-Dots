// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ButtonUiState {
  ButtonLabelType get buttonLabelType => throw _privateConstructorUsedError;
  ButtonState get state => throw _privateConstructorUsedError;
  ButtonColorType get buttonColorType => throw _privateConstructorUsedError;
  ButtonSizeType get buttonSizeType => throw _privateConstructorUsedError;

  /// Create a copy of ButtonUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtonUiStateCopyWith<ButtonUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonUiStateCopyWith<$Res> {
  factory $ButtonUiStateCopyWith(
          ButtonUiState value, $Res Function(ButtonUiState) then) =
      _$ButtonUiStateCopyWithImpl<$Res, ButtonUiState>;
  @useResult
  $Res call(
      {ButtonLabelType buttonLabelType,
      ButtonState state,
      ButtonColorType buttonColorType,
      ButtonSizeType buttonSizeType});

  $ButtonLabelTypeCopyWith<$Res> get buttonLabelType;
}

/// @nodoc
class _$ButtonUiStateCopyWithImpl<$Res, $Val extends ButtonUiState>
    implements $ButtonUiStateCopyWith<$Res> {
  _$ButtonUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtonUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonLabelType = null,
    Object? state = null,
    Object? buttonColorType = null,
    Object? buttonSizeType = null,
  }) {
    return _then(_value.copyWith(
      buttonLabelType: null == buttonLabelType
          ? _value.buttonLabelType
          : buttonLabelType // ignore: cast_nullable_to_non_nullable
              as ButtonLabelType,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ButtonState,
      buttonColorType: null == buttonColorType
          ? _value.buttonColorType
          : buttonColorType // ignore: cast_nullable_to_non_nullable
              as ButtonColorType,
      buttonSizeType: null == buttonSizeType
          ? _value.buttonSizeType
          : buttonSizeType // ignore: cast_nullable_to_non_nullable
              as ButtonSizeType,
    ) as $Val);
  }

  /// Create a copy of ButtonUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ButtonLabelTypeCopyWith<$Res> get buttonLabelType {
    return $ButtonLabelTypeCopyWith<$Res>(_value.buttonLabelType, (value) {
      return _then(_value.copyWith(buttonLabelType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ButtonUiStateImplCopyWith<$Res>
    implements $ButtonUiStateCopyWith<$Res> {
  factory _$$ButtonUiStateImplCopyWith(
          _$ButtonUiStateImpl value, $Res Function(_$ButtonUiStateImpl) then) =
      __$$ButtonUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ButtonLabelType buttonLabelType,
      ButtonState state,
      ButtonColorType buttonColorType,
      ButtonSizeType buttonSizeType});

  @override
  $ButtonLabelTypeCopyWith<$Res> get buttonLabelType;
}

/// @nodoc
class __$$ButtonUiStateImplCopyWithImpl<$Res>
    extends _$ButtonUiStateCopyWithImpl<$Res, _$ButtonUiStateImpl>
    implements _$$ButtonUiStateImplCopyWith<$Res> {
  __$$ButtonUiStateImplCopyWithImpl(
      _$ButtonUiStateImpl _value, $Res Function(_$ButtonUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtonUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonLabelType = null,
    Object? state = null,
    Object? buttonColorType = null,
    Object? buttonSizeType = null,
  }) {
    return _then(_$ButtonUiStateImpl(
      buttonLabelType: null == buttonLabelType
          ? _value.buttonLabelType
          : buttonLabelType // ignore: cast_nullable_to_non_nullable
              as ButtonLabelType,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ButtonState,
      buttonColorType: null == buttonColorType
          ? _value.buttonColorType
          : buttonColorType // ignore: cast_nullable_to_non_nullable
              as ButtonColorType,
      buttonSizeType: null == buttonSizeType
          ? _value.buttonSizeType
          : buttonSizeType // ignore: cast_nullable_to_non_nullable
              as ButtonSizeType,
    ));
  }
}

/// @nodoc

class _$ButtonUiStateImpl implements _ButtonUiState {
  const _$ButtonUiStateImpl(
      {required this.buttonLabelType,
      this.state = ButtonState.active,
      required this.buttonColorType,
      required this.buttonSizeType});

  @override
  final ButtonLabelType buttonLabelType;
  @override
  @JsonKey()
  final ButtonState state;
  @override
  final ButtonColorType buttonColorType;
  @override
  final ButtonSizeType buttonSizeType;

  @override
  String toString() {
    return 'ButtonUiState(buttonLabelType: $buttonLabelType, state: $state, buttonColorType: $buttonColorType, buttonSizeType: $buttonSizeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonUiStateImpl &&
            (identical(other.buttonLabelType, buttonLabelType) ||
                other.buttonLabelType == buttonLabelType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.buttonColorType, buttonColorType) ||
                other.buttonColorType == buttonColorType) &&
            (identical(other.buttonSizeType, buttonSizeType) ||
                other.buttonSizeType == buttonSizeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, buttonLabelType, state, buttonColorType, buttonSizeType);

  /// Create a copy of ButtonUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonUiStateImplCopyWith<_$ButtonUiStateImpl> get copyWith =>
      __$$ButtonUiStateImplCopyWithImpl<_$ButtonUiStateImpl>(this, _$identity);
}

abstract class _ButtonUiState implements ButtonUiState {
  const factory _ButtonUiState(
      {required final ButtonLabelType buttonLabelType,
      final ButtonState state,
      required final ButtonColorType buttonColorType,
      required final ButtonSizeType buttonSizeType}) = _$ButtonUiStateImpl;

  @override
  ButtonLabelType get buttonLabelType;
  @override
  ButtonState get state;
  @override
  ButtonColorType get buttonColorType;
  @override
  ButtonSizeType get buttonSizeType;

  /// Create a copy of ButtonUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtonUiStateImplCopyWith<_$ButtonUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
