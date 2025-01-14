// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popup_button_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopupButtonType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label, void Function()? onPressed)
        singleButton,
    required TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)
        multiButton,
    required TResult Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)
        verticalMultiButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label, void Function()? onPressed)? singleButton,
    TResult? Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult? Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)?
        verticalMultiButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label, void Function()? onPressed)? singleButton,
    TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult Function(String topButtonLabel, void Function()? onPressedTopButton,
            String bottomButtonLabel, void Function()? onPressedBottomButton)?
        verticalMultiButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SinglePopupButton value) singleButton,
    required TResult Function(MultiPopupButton value) multiButton,
    required TResult Function(VerticalMultiPopupButton value)
        verticalMultiButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SinglePopupButton value)? singleButton,
    TResult? Function(MultiPopupButton value)? multiButton,
    TResult? Function(VerticalMultiPopupButton value)? verticalMultiButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SinglePopupButton value)? singleButton,
    TResult Function(MultiPopupButton value)? multiButton,
    TResult Function(VerticalMultiPopupButton value)? verticalMultiButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopupButtonTypeCopyWith<$Res> {
  factory $PopupButtonTypeCopyWith(
          PopupButtonType value, $Res Function(PopupButtonType) then) =
      _$PopupButtonTypeCopyWithImpl<$Res, PopupButtonType>;
}

/// @nodoc
class _$PopupButtonTypeCopyWithImpl<$Res, $Val extends PopupButtonType>
    implements $PopupButtonTypeCopyWith<$Res> {
  _$PopupButtonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SinglePopupButtonImplCopyWith<$Res> {
  factory _$$SinglePopupButtonImplCopyWith(_$SinglePopupButtonImpl value,
          $Res Function(_$SinglePopupButtonImpl) then) =
      __$$SinglePopupButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label, void Function()? onPressed});
}

/// @nodoc
class __$$SinglePopupButtonImplCopyWithImpl<$Res>
    extends _$PopupButtonTypeCopyWithImpl<$Res, _$SinglePopupButtonImpl>
    implements _$$SinglePopupButtonImplCopyWith<$Res> {
  __$$SinglePopupButtonImplCopyWithImpl(_$SinglePopupButtonImpl _value,
      $Res Function(_$SinglePopupButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? onPressed = freezed,
  }) {
    return _then(_$SinglePopupButtonImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$SinglePopupButtonImpl implements SinglePopupButton {
  const _$SinglePopupButtonImpl({required this.label, this.onPressed = null});

  @override
  final String label;
  @override
  @JsonKey()
  final void Function()? onPressed;

  @override
  String toString() {
    return 'PopupButtonType.singleButton(label: $label, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SinglePopupButtonImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, onPressed);

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SinglePopupButtonImplCopyWith<_$SinglePopupButtonImpl> get copyWith =>
      __$$SinglePopupButtonImplCopyWithImpl<_$SinglePopupButtonImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label, void Function()? onPressed)
        singleButton,
    required TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)
        multiButton,
    required TResult Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)
        verticalMultiButton,
  }) {
    return singleButton(label, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label, void Function()? onPressed)? singleButton,
    TResult? Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult? Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)?
        verticalMultiButton,
  }) {
    return singleButton?.call(label, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label, void Function()? onPressed)? singleButton,
    TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult Function(String topButtonLabel, void Function()? onPressedTopButton,
            String bottomButtonLabel, void Function()? onPressedBottomButton)?
        verticalMultiButton,
    required TResult orElse(),
  }) {
    if (singleButton != null) {
      return singleButton(label, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SinglePopupButton value) singleButton,
    required TResult Function(MultiPopupButton value) multiButton,
    required TResult Function(VerticalMultiPopupButton value)
        verticalMultiButton,
  }) {
    return singleButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SinglePopupButton value)? singleButton,
    TResult? Function(MultiPopupButton value)? multiButton,
    TResult? Function(VerticalMultiPopupButton value)? verticalMultiButton,
  }) {
    return singleButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SinglePopupButton value)? singleButton,
    TResult Function(MultiPopupButton value)? multiButton,
    TResult Function(VerticalMultiPopupButton value)? verticalMultiButton,
    required TResult orElse(),
  }) {
    if (singleButton != null) {
      return singleButton(this);
    }
    return orElse();
  }
}

abstract class SinglePopupButton implements PopupButtonType {
  const factory SinglePopupButton(
      {required final String label,
      final void Function()? onPressed}) = _$SinglePopupButtonImpl;

  String get label;
  void Function()? get onPressed;

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SinglePopupButtonImplCopyWith<_$SinglePopupButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiPopupButtonImplCopyWith<$Res> {
  factory _$$MultiPopupButtonImplCopyWith(_$MultiPopupButtonImpl value,
          $Res Function(_$MultiPopupButtonImpl) then) =
      __$$MultiPopupButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String leftButtonLabel,
      void Function()? onPressedLeftButton,
      String rightButtonLabel,
      void Function()? onPressedRightButton});
}

/// @nodoc
class __$$MultiPopupButtonImplCopyWithImpl<$Res>
    extends _$PopupButtonTypeCopyWithImpl<$Res, _$MultiPopupButtonImpl>
    implements _$$MultiPopupButtonImplCopyWith<$Res> {
  __$$MultiPopupButtonImplCopyWithImpl(_$MultiPopupButtonImpl _value,
      $Res Function(_$MultiPopupButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftButtonLabel = null,
    Object? onPressedLeftButton = freezed,
    Object? rightButtonLabel = null,
    Object? onPressedRightButton = freezed,
  }) {
    return _then(_$MultiPopupButtonImpl(
      leftButtonLabel: null == leftButtonLabel
          ? _value.leftButtonLabel
          : leftButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      onPressedLeftButton: freezed == onPressedLeftButton
          ? _value.onPressedLeftButton
          : onPressedLeftButton // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      rightButtonLabel: null == rightButtonLabel
          ? _value.rightButtonLabel
          : rightButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      onPressedRightButton: freezed == onPressedRightButton
          ? _value.onPressedRightButton
          : onPressedRightButton // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$MultiPopupButtonImpl implements MultiPopupButton {
  const _$MultiPopupButtonImpl(
      {required this.leftButtonLabel,
      this.onPressedLeftButton = null,
      required this.rightButtonLabel,
      this.onPressedRightButton = null});

  @override
  final String leftButtonLabel;
  @override
  @JsonKey()
  final void Function()? onPressedLeftButton;
  @override
  final String rightButtonLabel;
  @override
  @JsonKey()
  final void Function()? onPressedRightButton;

  @override
  String toString() {
    return 'PopupButtonType.multiButton(leftButtonLabel: $leftButtonLabel, onPressedLeftButton: $onPressedLeftButton, rightButtonLabel: $rightButtonLabel, onPressedRightButton: $onPressedRightButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiPopupButtonImpl &&
            (identical(other.leftButtonLabel, leftButtonLabel) ||
                other.leftButtonLabel == leftButtonLabel) &&
            (identical(other.onPressedLeftButton, onPressedLeftButton) ||
                other.onPressedLeftButton == onPressedLeftButton) &&
            (identical(other.rightButtonLabel, rightButtonLabel) ||
                other.rightButtonLabel == rightButtonLabel) &&
            (identical(other.onPressedRightButton, onPressedRightButton) ||
                other.onPressedRightButton == onPressedRightButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leftButtonLabel,
      onPressedLeftButton, rightButtonLabel, onPressedRightButton);

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiPopupButtonImplCopyWith<_$MultiPopupButtonImpl> get copyWith =>
      __$$MultiPopupButtonImplCopyWithImpl<_$MultiPopupButtonImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label, void Function()? onPressed)
        singleButton,
    required TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)
        multiButton,
    required TResult Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)
        verticalMultiButton,
  }) {
    return multiButton(leftButtonLabel, onPressedLeftButton, rightButtonLabel,
        onPressedRightButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label, void Function()? onPressed)? singleButton,
    TResult? Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult? Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)?
        verticalMultiButton,
  }) {
    return multiButton?.call(leftButtonLabel, onPressedLeftButton,
        rightButtonLabel, onPressedRightButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label, void Function()? onPressed)? singleButton,
    TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult Function(String topButtonLabel, void Function()? onPressedTopButton,
            String bottomButtonLabel, void Function()? onPressedBottomButton)?
        verticalMultiButton,
    required TResult orElse(),
  }) {
    if (multiButton != null) {
      return multiButton(leftButtonLabel, onPressedLeftButton, rightButtonLabel,
          onPressedRightButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SinglePopupButton value) singleButton,
    required TResult Function(MultiPopupButton value) multiButton,
    required TResult Function(VerticalMultiPopupButton value)
        verticalMultiButton,
  }) {
    return multiButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SinglePopupButton value)? singleButton,
    TResult? Function(MultiPopupButton value)? multiButton,
    TResult? Function(VerticalMultiPopupButton value)? verticalMultiButton,
  }) {
    return multiButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SinglePopupButton value)? singleButton,
    TResult Function(MultiPopupButton value)? multiButton,
    TResult Function(VerticalMultiPopupButton value)? verticalMultiButton,
    required TResult orElse(),
  }) {
    if (multiButton != null) {
      return multiButton(this);
    }
    return orElse();
  }
}

abstract class MultiPopupButton implements PopupButtonType {
  const factory MultiPopupButton(
      {required final String leftButtonLabel,
      final void Function()? onPressedLeftButton,
      required final String rightButtonLabel,
      final void Function()? onPressedRightButton}) = _$MultiPopupButtonImpl;

  String get leftButtonLabel;
  void Function()? get onPressedLeftButton;
  String get rightButtonLabel;
  void Function()? get onPressedRightButton;

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiPopupButtonImplCopyWith<_$MultiPopupButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerticalMultiPopupButtonImplCopyWith<$Res> {
  factory _$$VerticalMultiPopupButtonImplCopyWith(
          _$VerticalMultiPopupButtonImpl value,
          $Res Function(_$VerticalMultiPopupButtonImpl) then) =
      __$$VerticalMultiPopupButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String topButtonLabel,
      void Function()? onPressedTopButton,
      String bottomButtonLabel,
      void Function()? onPressedBottomButton});
}

/// @nodoc
class __$$VerticalMultiPopupButtonImplCopyWithImpl<$Res>
    extends _$PopupButtonTypeCopyWithImpl<$Res, _$VerticalMultiPopupButtonImpl>
    implements _$$VerticalMultiPopupButtonImplCopyWith<$Res> {
  __$$VerticalMultiPopupButtonImplCopyWithImpl(
      _$VerticalMultiPopupButtonImpl _value,
      $Res Function(_$VerticalMultiPopupButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topButtonLabel = null,
    Object? onPressedTopButton = freezed,
    Object? bottomButtonLabel = null,
    Object? onPressedBottomButton = freezed,
  }) {
    return _then(_$VerticalMultiPopupButtonImpl(
      topButtonLabel: null == topButtonLabel
          ? _value.topButtonLabel
          : topButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      onPressedTopButton: freezed == onPressedTopButton
          ? _value.onPressedTopButton
          : onPressedTopButton // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      bottomButtonLabel: null == bottomButtonLabel
          ? _value.bottomButtonLabel
          : bottomButtonLabel // ignore: cast_nullable_to_non_nullable
              as String,
      onPressedBottomButton: freezed == onPressedBottomButton
          ? _value.onPressedBottomButton
          : onPressedBottomButton // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$VerticalMultiPopupButtonImpl implements VerticalMultiPopupButton {
  const _$VerticalMultiPopupButtonImpl(
      {required this.topButtonLabel,
      this.onPressedTopButton = null,
      required this.bottomButtonLabel,
      this.onPressedBottomButton = null});

  @override
  final String topButtonLabel;
  @override
  @JsonKey()
  final void Function()? onPressedTopButton;
  @override
  final String bottomButtonLabel;
  @override
  @JsonKey()
  final void Function()? onPressedBottomButton;

  @override
  String toString() {
    return 'PopupButtonType.verticalMultiButton(topButtonLabel: $topButtonLabel, onPressedTopButton: $onPressedTopButton, bottomButtonLabel: $bottomButtonLabel, onPressedBottomButton: $onPressedBottomButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticalMultiPopupButtonImpl &&
            (identical(other.topButtonLabel, topButtonLabel) ||
                other.topButtonLabel == topButtonLabel) &&
            (identical(other.onPressedTopButton, onPressedTopButton) ||
                other.onPressedTopButton == onPressedTopButton) &&
            (identical(other.bottomButtonLabel, bottomButtonLabel) ||
                other.bottomButtonLabel == bottomButtonLabel) &&
            (identical(other.onPressedBottomButton, onPressedBottomButton) ||
                other.onPressedBottomButton == onPressedBottomButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topButtonLabel,
      onPressedTopButton, bottomButtonLabel, onPressedBottomButton);

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerticalMultiPopupButtonImplCopyWith<_$VerticalMultiPopupButtonImpl>
      get copyWith => __$$VerticalMultiPopupButtonImplCopyWithImpl<
          _$VerticalMultiPopupButtonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label, void Function()? onPressed)
        singleButton,
    required TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)
        multiButton,
    required TResult Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)
        verticalMultiButton,
  }) {
    return verticalMultiButton(topButtonLabel, onPressedTopButton,
        bottomButtonLabel, onPressedBottomButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label, void Function()? onPressed)? singleButton,
    TResult? Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult? Function(
            String topButtonLabel,
            void Function()? onPressedTopButton,
            String bottomButtonLabel,
            void Function()? onPressedBottomButton)?
        verticalMultiButton,
  }) {
    return verticalMultiButton?.call(topButtonLabel, onPressedTopButton,
        bottomButtonLabel, onPressedBottomButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label, void Function()? onPressed)? singleButton,
    TResult Function(
            String leftButtonLabel,
            void Function()? onPressedLeftButton,
            String rightButtonLabel,
            void Function()? onPressedRightButton)?
        multiButton,
    TResult Function(String topButtonLabel, void Function()? onPressedTopButton,
            String bottomButtonLabel, void Function()? onPressedBottomButton)?
        verticalMultiButton,
    required TResult orElse(),
  }) {
    if (verticalMultiButton != null) {
      return verticalMultiButton(topButtonLabel, onPressedTopButton,
          bottomButtonLabel, onPressedBottomButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SinglePopupButton value) singleButton,
    required TResult Function(MultiPopupButton value) multiButton,
    required TResult Function(VerticalMultiPopupButton value)
        verticalMultiButton,
  }) {
    return verticalMultiButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SinglePopupButton value)? singleButton,
    TResult? Function(MultiPopupButton value)? multiButton,
    TResult? Function(VerticalMultiPopupButton value)? verticalMultiButton,
  }) {
    return verticalMultiButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SinglePopupButton value)? singleButton,
    TResult Function(MultiPopupButton value)? multiButton,
    TResult Function(VerticalMultiPopupButton value)? verticalMultiButton,
    required TResult orElse(),
  }) {
    if (verticalMultiButton != null) {
      return verticalMultiButton(this);
    }
    return orElse();
  }
}

abstract class VerticalMultiPopupButton implements PopupButtonType {
  const factory VerticalMultiPopupButton(
          {required final String topButtonLabel,
          final void Function()? onPressedTopButton,
          required final String bottomButtonLabel,
          final void Function()? onPressedBottomButton}) =
      _$VerticalMultiPopupButtonImpl;

  String get topButtonLabel;
  void Function()? get onPressedTopButton;
  String get bottomButtonLabel;
  void Function()? get onPressedBottomButton;

  /// Create a copy of PopupButtonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerticalMultiPopupButtonImplCopyWith<_$VerticalMultiPopupButtonImpl>
      get copyWith => throw _privateConstructorUsedError;
}
