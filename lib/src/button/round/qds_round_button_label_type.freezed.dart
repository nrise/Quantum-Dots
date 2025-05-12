// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qds_round_button_label_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QdsRoundButtonLabelType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String iconAssetString) iconOnly,
    required TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)
        labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String iconAssetString)? iconOnly,
    TResult? Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
        labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String iconAssetString)? iconOnly,
    TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
        labelAndIcon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsRoundButtonLabelOnly value) labelOnly,
    required TResult Function(QdsRoundButtonIconOnly value) iconOnly,
    required TResult Function(QdsRoundButtonLabelAndIcon value) labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult? Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QdsRoundButtonLabelTypeCopyWith<$Res> {
  factory $QdsRoundButtonLabelTypeCopyWith(QdsRoundButtonLabelType value,
          $Res Function(QdsRoundButtonLabelType) then) =
      _$QdsRoundButtonLabelTypeCopyWithImpl<$Res, QdsRoundButtonLabelType>;
}

/// @nodoc
class _$QdsRoundButtonLabelTypeCopyWithImpl<$Res,
        $Val extends QdsRoundButtonLabelType>
    implements $QdsRoundButtonLabelTypeCopyWith<$Res> {
  _$QdsRoundButtonLabelTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QdsRoundButtonLabelOnlyImplCopyWith<$Res> {
  factory _$$QdsRoundButtonLabelOnlyImplCopyWith(
          _$QdsRoundButtonLabelOnlyImpl value,
          $Res Function(_$QdsRoundButtonLabelOnlyImpl) then) =
      __$$QdsRoundButtonLabelOnlyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$QdsRoundButtonLabelOnlyImplCopyWithImpl<$Res>
    extends _$QdsRoundButtonLabelTypeCopyWithImpl<$Res,
        _$QdsRoundButtonLabelOnlyImpl>
    implements _$$QdsRoundButtonLabelOnlyImplCopyWith<$Res> {
  __$$QdsRoundButtonLabelOnlyImplCopyWithImpl(
      _$QdsRoundButtonLabelOnlyImpl _value,
      $Res Function(_$QdsRoundButtonLabelOnlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$QdsRoundButtonLabelOnlyImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QdsRoundButtonLabelOnlyImpl implements QdsRoundButtonLabelOnly {
  const _$QdsRoundButtonLabelOnlyImpl({required this.label});

  @override
  final String label;

  @override
  String toString() {
    return 'QdsRoundButtonLabelType.labelOnly(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsRoundButtonLabelOnlyImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsRoundButtonLabelOnlyImplCopyWith<_$QdsRoundButtonLabelOnlyImpl>
      get copyWith => __$$QdsRoundButtonLabelOnlyImplCopyWithImpl<
          _$QdsRoundButtonLabelOnlyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String iconAssetString) iconOnly,
    required TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)
        labelAndIcon,
  }) {
    return labelOnly(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String iconAssetString)? iconOnly,
    TResult? Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
        labelAndIcon,
  }) {
    return labelOnly?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String iconAssetString)? iconOnly,
    TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
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
    required TResult Function(QdsRoundButtonLabelOnly value) labelOnly,
    required TResult Function(QdsRoundButtonIconOnly value) iconOnly,
    required TResult Function(QdsRoundButtonLabelAndIcon value) labelAndIcon,
  }) {
    return labelOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult? Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
  }) {
    return labelOnly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelOnly != null) {
      return labelOnly(this);
    }
    return orElse();
  }
}

abstract class QdsRoundButtonLabelOnly implements QdsRoundButtonLabelType {
  const factory QdsRoundButtonLabelOnly({required final String label}) =
      _$QdsRoundButtonLabelOnlyImpl;

  String get label;

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsRoundButtonLabelOnlyImplCopyWith<_$QdsRoundButtonLabelOnlyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QdsRoundButtonIconOnlyImplCopyWith<$Res> {
  factory _$$QdsRoundButtonIconOnlyImplCopyWith(
          _$QdsRoundButtonIconOnlyImpl value,
          $Res Function(_$QdsRoundButtonIconOnlyImpl) then) =
      __$$QdsRoundButtonIconOnlyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String iconAssetString});
}

/// @nodoc
class __$$QdsRoundButtonIconOnlyImplCopyWithImpl<$Res>
    extends _$QdsRoundButtonLabelTypeCopyWithImpl<$Res,
        _$QdsRoundButtonIconOnlyImpl>
    implements _$$QdsRoundButtonIconOnlyImplCopyWith<$Res> {
  __$$QdsRoundButtonIconOnlyImplCopyWithImpl(
      _$QdsRoundButtonIconOnlyImpl _value,
      $Res Function(_$QdsRoundButtonIconOnlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconAssetString = null,
  }) {
    return _then(_$QdsRoundButtonIconOnlyImpl(
      iconAssetString: null == iconAssetString
          ? _value.iconAssetString
          : iconAssetString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QdsRoundButtonIconOnlyImpl implements QdsRoundButtonIconOnly {
  const _$QdsRoundButtonIconOnlyImpl({required this.iconAssetString});

  @override
  final String iconAssetString;

  @override
  String toString() {
    return 'QdsRoundButtonLabelType.iconOnly(iconAssetString: $iconAssetString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsRoundButtonIconOnlyImpl &&
            (identical(other.iconAssetString, iconAssetString) ||
                other.iconAssetString == iconAssetString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconAssetString);

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsRoundButtonIconOnlyImplCopyWith<_$QdsRoundButtonIconOnlyImpl>
      get copyWith => __$$QdsRoundButtonIconOnlyImplCopyWithImpl<
          _$QdsRoundButtonIconOnlyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String iconAssetString) iconOnly,
    required TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)
        labelAndIcon,
  }) {
    return iconOnly(iconAssetString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String iconAssetString)? iconOnly,
    TResult? Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
        labelAndIcon,
  }) {
    return iconOnly?.call(iconAssetString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String iconAssetString)? iconOnly,
    TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
        labelAndIcon,
    required TResult orElse(),
  }) {
    if (iconOnly != null) {
      return iconOnly(iconAssetString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsRoundButtonLabelOnly value) labelOnly,
    required TResult Function(QdsRoundButtonIconOnly value) iconOnly,
    required TResult Function(QdsRoundButtonLabelAndIcon value) labelAndIcon,
  }) {
    return iconOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult? Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
  }) {
    return iconOnly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (iconOnly != null) {
      return iconOnly(this);
    }
    return orElse();
  }
}

abstract class QdsRoundButtonIconOnly implements QdsRoundButtonLabelType {
  const factory QdsRoundButtonIconOnly(
      {required final String iconAssetString}) = _$QdsRoundButtonIconOnlyImpl;

  String get iconAssetString;

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsRoundButtonIconOnlyImplCopyWith<_$QdsRoundButtonIconOnlyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QdsRoundButtonLabelAndIconImplCopyWith<$Res> {
  factory _$$QdsRoundButtonLabelAndIconImplCopyWith(
          _$QdsRoundButtonLabelAndIconImpl value,
          $Res Function(_$QdsRoundButtonLabelAndIconImpl) then) =
      __$$QdsRoundButtonLabelAndIconImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String label,
      String iconAssetString,
      QdsRoundButtonDirection buttonDirection});
}

/// @nodoc
class __$$QdsRoundButtonLabelAndIconImplCopyWithImpl<$Res>
    extends _$QdsRoundButtonLabelTypeCopyWithImpl<$Res,
        _$QdsRoundButtonLabelAndIconImpl>
    implements _$$QdsRoundButtonLabelAndIconImplCopyWith<$Res> {
  __$$QdsRoundButtonLabelAndIconImplCopyWithImpl(
      _$QdsRoundButtonLabelAndIconImpl _value,
      $Res Function(_$QdsRoundButtonLabelAndIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? iconAssetString = null,
    Object? buttonDirection = null,
  }) {
    return _then(_$QdsRoundButtonLabelAndIconImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      iconAssetString: null == iconAssetString
          ? _value.iconAssetString
          : iconAssetString // ignore: cast_nullable_to_non_nullable
              as String,
      buttonDirection: null == buttonDirection
          ? _value.buttonDirection
          : buttonDirection // ignore: cast_nullable_to_non_nullable
              as QdsRoundButtonDirection,
    ));
  }
}

/// @nodoc

class _$QdsRoundButtonLabelAndIconImpl implements QdsRoundButtonLabelAndIcon {
  const _$QdsRoundButtonLabelAndIconImpl(
      {required this.label,
      required this.iconAssetString,
      this.buttonDirection = QdsRoundButtonDirection.left});

  @override
  final String label;
  @override
  final String iconAssetString;
  @override
  @JsonKey()
  final QdsRoundButtonDirection buttonDirection;

  @override
  String toString() {
    return 'QdsRoundButtonLabelType.labelAndIcon(label: $label, iconAssetString: $iconAssetString, buttonDirection: $buttonDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsRoundButtonLabelAndIconImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.iconAssetString, iconAssetString) ||
                other.iconAssetString == iconAssetString) &&
            (identical(other.buttonDirection, buttonDirection) ||
                other.buttonDirection == buttonDirection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, iconAssetString, buttonDirection);

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsRoundButtonLabelAndIconImplCopyWith<_$QdsRoundButtonLabelAndIconImpl>
      get copyWith => __$$QdsRoundButtonLabelAndIconImplCopyWithImpl<
          _$QdsRoundButtonLabelAndIconImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String iconAssetString) iconOnly,
    required TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)
        labelAndIcon,
  }) {
    return labelAndIcon(label, iconAssetString, buttonDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String iconAssetString)? iconOnly,
    TResult? Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
        labelAndIcon,
  }) {
    return labelAndIcon?.call(label, iconAssetString, buttonDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String iconAssetString)? iconOnly,
    TResult Function(String label, String iconAssetString,
            QdsRoundButtonDirection buttonDirection)?
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
    required TResult Function(QdsRoundButtonLabelOnly value) labelOnly,
    required TResult Function(QdsRoundButtonIconOnly value) iconOnly,
    required TResult Function(QdsRoundButtonLabelAndIcon value) labelAndIcon,
  }) {
    return labelAndIcon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult? Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
  }) {
    return labelAndIcon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsRoundButtonLabelOnly value)? labelOnly,
    TResult Function(QdsRoundButtonIconOnly value)? iconOnly,
    TResult Function(QdsRoundButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelAndIcon != null) {
      return labelAndIcon(this);
    }
    return orElse();
  }
}

abstract class QdsRoundButtonLabelAndIcon implements QdsRoundButtonLabelType {
  const factory QdsRoundButtonLabelAndIcon(
          {required final String label,
          required final String iconAssetString,
          final QdsRoundButtonDirection buttonDirection}) =
      _$QdsRoundButtonLabelAndIconImpl;

  String get label;
  String get iconAssetString;
  QdsRoundButtonDirection get buttonDirection;

  /// Create a copy of QdsRoundButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsRoundButtonLabelAndIconImplCopyWith<_$QdsRoundButtonLabelAndIconImpl>
      get copyWith => throw _privateConstructorUsedError;
}
