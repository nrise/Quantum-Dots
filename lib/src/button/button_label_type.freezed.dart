// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button_label_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ButtonLabelType {
  String get label => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(
            String label, String iconAssetString, dynamic buttonDirection)
        labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(
            String label, String iconAssetString, dynamic buttonDirection)?
        labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(
            String label, String iconAssetString, dynamic buttonDirection)?
        labelAndIcon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LabelOnly value) labelOnly,
    required TResult Function(LabelAndIcon value) labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LabelOnly value)? labelOnly,
    TResult? Function(LabelAndIcon value)? labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LabelOnly value)? labelOnly,
    TResult Function(LabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtonLabelTypeCopyWith<ButtonLabelType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonLabelTypeCopyWith<$Res> {
  factory $ButtonLabelTypeCopyWith(
          ButtonLabelType value, $Res Function(ButtonLabelType) then) =
      _$ButtonLabelTypeCopyWithImpl<$Res, ButtonLabelType>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$ButtonLabelTypeCopyWithImpl<$Res, $Val extends ButtonLabelType>
    implements $ButtonLabelTypeCopyWith<$Res> {
  _$ButtonLabelTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelOnlyImplCopyWith<$Res>
    implements $ButtonLabelTypeCopyWith<$Res> {
  factory _$$LabelOnlyImplCopyWith(
          _$LabelOnlyImpl value, $Res Function(_$LabelOnlyImpl) then) =
      __$$LabelOnlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$LabelOnlyImplCopyWithImpl<$Res>
    extends _$ButtonLabelTypeCopyWithImpl<$Res, _$LabelOnlyImpl>
    implements _$$LabelOnlyImplCopyWith<$Res> {
  __$$LabelOnlyImplCopyWithImpl(
      _$LabelOnlyImpl _value, $Res Function(_$LabelOnlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$LabelOnlyImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LabelOnlyImpl implements LabelOnly {
  const _$LabelOnlyImpl({required this.label});

  @override
  final String label;

  @override
  String toString() {
    return 'ButtonLabelType.labelOnly(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelOnlyImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelOnlyImplCopyWith<_$LabelOnlyImpl> get copyWith =>
      __$$LabelOnlyImplCopyWithImpl<_$LabelOnlyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(
            String label, String iconAssetString, dynamic buttonDirection)
        labelAndIcon,
  }) {
    return labelOnly(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(
            String label, String iconAssetString, dynamic buttonDirection)?
        labelAndIcon,
  }) {
    return labelOnly?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(
            String label, String iconAssetString, dynamic buttonDirection)?
        labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelOnly != null) {
      return labelOnly(label);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LabelOnly value) labelOnly,
    required TResult Function(LabelAndIcon value) labelAndIcon,
  }) {
    return labelOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LabelOnly value)? labelOnly,
    TResult? Function(LabelAndIcon value)? labelAndIcon,
  }) {
    return labelOnly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LabelOnly value)? labelOnly,
    TResult Function(LabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelOnly != null) {
      return labelOnly(this);
    }
    return orElse();
  }
}

abstract class LabelOnly implements ButtonLabelType {
  const factory LabelOnly({required final String label}) = _$LabelOnlyImpl;

  @override
  String get label;

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelOnlyImplCopyWith<_$LabelOnlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LabelAndIconImplCopyWith<$Res>
    implements $ButtonLabelTypeCopyWith<$Res> {
  factory _$$LabelAndIconImplCopyWith(
          _$LabelAndIconImpl value, $Res Function(_$LabelAndIconImpl) then) =
      __$$LabelAndIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String iconAssetString, dynamic buttonDirection});
}

/// @nodoc
class __$$LabelAndIconImplCopyWithImpl<$Res>
    extends _$ButtonLabelTypeCopyWithImpl<$Res, _$LabelAndIconImpl>
    implements _$$LabelAndIconImplCopyWith<$Res> {
  __$$LabelAndIconImplCopyWithImpl(
      _$LabelAndIconImpl _value, $Res Function(_$LabelAndIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? iconAssetString = null,
    Object? buttonDirection = freezed,
  }) {
    return _then(_$LabelAndIconImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      iconAssetString: null == iconAssetString
          ? _value.iconAssetString
          : iconAssetString // ignore: cast_nullable_to_non_nullable
              as String,
      buttonDirection: freezed == buttonDirection
          ? _value.buttonDirection!
          : buttonDirection,
    ));
  }
}

/// @nodoc

class _$LabelAndIconImpl implements LabelAndIcon {
  const _$LabelAndIconImpl(
      {required this.label,
      required this.iconAssetString,
      this.buttonDirection = ButtonDirection.left});

  @override
  final String label;
  @override
  final String iconAssetString;
  @override
  @JsonKey()
  final dynamic buttonDirection;

  @override
  String toString() {
    return 'ButtonLabelType.labelAndIcon(label: $label, iconAssetString: $iconAssetString, buttonDirection: $buttonDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelAndIconImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.iconAssetString, iconAssetString) ||
                other.iconAssetString == iconAssetString) &&
            const DeepCollectionEquality()
                .equals(other.buttonDirection, buttonDirection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, iconAssetString,
      const DeepCollectionEquality().hash(buttonDirection));

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelAndIconImplCopyWith<_$LabelAndIconImpl> get copyWith =>
      __$$LabelAndIconImplCopyWithImpl<_$LabelAndIconImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(
            String label, String iconAssetString, dynamic buttonDirection)
        labelAndIcon,
  }) {
    return labelAndIcon(label, iconAssetString, buttonDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(
            String label, String iconAssetString, dynamic buttonDirection)?
        labelAndIcon,
  }) {
    return labelAndIcon?.call(label, iconAssetString, buttonDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(
            String label, String iconAssetString, dynamic buttonDirection)?
        labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelAndIcon != null) {
      return labelAndIcon(label, iconAssetString, buttonDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LabelOnly value) labelOnly,
    required TResult Function(LabelAndIcon value) labelAndIcon,
  }) {
    return labelAndIcon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LabelOnly value)? labelOnly,
    TResult? Function(LabelAndIcon value)? labelAndIcon,
  }) {
    return labelAndIcon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LabelOnly value)? labelOnly,
    TResult Function(LabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelAndIcon != null) {
      return labelAndIcon(this);
    }
    return orElse();
  }
}

abstract class LabelAndIcon implements ButtonLabelType {
  const factory LabelAndIcon(
      {required final String label,
      required final String iconAssetString,
      final dynamic buttonDirection}) = _$LabelAndIconImpl;

  @override
  String get label;
  String get iconAssetString;
  dynamic get buttonDirection;

  /// Create a copy of ButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelAndIconImplCopyWith<_$LabelAndIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
