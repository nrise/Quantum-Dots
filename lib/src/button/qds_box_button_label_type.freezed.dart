// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qds_box_button_label_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QdsBoxButtonLabelType {
  String get label => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)
        labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)?
        labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)?
        labelAndIcon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsBoxButtonLabelOnly value) labelOnly,
    required TResult Function(QdsBoxButtonLabelAndIcon value) labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBoxButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsBoxButtonLabelAndIcon value)? labelAndIcon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBoxButtonLabelOnly value)? labelOnly,
    TResult Function(QdsBoxButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QdsBoxButtonLabelTypeCopyWith<QdsBoxButtonLabelType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QdsBoxButtonLabelTypeCopyWith<$Res> {
  factory $QdsBoxButtonLabelTypeCopyWith(QdsBoxButtonLabelType value,
          $Res Function(QdsBoxButtonLabelType) then) =
      _$QdsBoxButtonLabelTypeCopyWithImpl<$Res, QdsBoxButtonLabelType>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$QdsBoxButtonLabelTypeCopyWithImpl<$Res,
        $Val extends QdsBoxButtonLabelType>
    implements $QdsBoxButtonLabelTypeCopyWith<$Res> {
  _$QdsBoxButtonLabelTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QdsBoxButtonLabelType
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
abstract class _$$QdsBoxButtonLabelOnlyImplCopyWith<$Res>
    implements $QdsBoxButtonLabelTypeCopyWith<$Res> {
  factory _$$QdsBoxButtonLabelOnlyImplCopyWith(
          _$QdsBoxButtonLabelOnlyImpl value,
          $Res Function(_$QdsBoxButtonLabelOnlyImpl) then) =
      __$$QdsBoxButtonLabelOnlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$QdsBoxButtonLabelOnlyImplCopyWithImpl<$Res>
    extends _$QdsBoxButtonLabelTypeCopyWithImpl<$Res,
        _$QdsBoxButtonLabelOnlyImpl>
    implements _$$QdsBoxButtonLabelOnlyImplCopyWith<$Res> {
  __$$QdsBoxButtonLabelOnlyImplCopyWithImpl(_$QdsBoxButtonLabelOnlyImpl _value,
      $Res Function(_$QdsBoxButtonLabelOnlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$QdsBoxButtonLabelOnlyImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QdsBoxButtonLabelOnlyImpl implements QdsBoxButtonLabelOnly {
  const _$QdsBoxButtonLabelOnlyImpl({required this.label});

  @override
  final String label;

  @override
  String toString() {
    return 'QdsBoxButtonLabelType.labelOnly(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsBoxButtonLabelOnlyImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsBoxButtonLabelOnlyImplCopyWith<_$QdsBoxButtonLabelOnlyImpl>
      get copyWith => __$$QdsBoxButtonLabelOnlyImplCopyWithImpl<
          _$QdsBoxButtonLabelOnlyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)
        labelAndIcon,
  }) {
    return labelOnly(label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)?
        labelAndIcon,
  }) {
    return labelOnly?.call(label);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)?
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
    required TResult Function(QdsBoxButtonLabelOnly value) labelOnly,
    required TResult Function(QdsBoxButtonLabelAndIcon value) labelAndIcon,
  }) {
    return labelOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBoxButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsBoxButtonLabelAndIcon value)? labelAndIcon,
  }) {
    return labelOnly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBoxButtonLabelOnly value)? labelOnly,
    TResult Function(QdsBoxButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelOnly != null) {
      return labelOnly(this);
    }
    return orElse();
  }
}

abstract class QdsBoxButtonLabelOnly implements QdsBoxButtonLabelType {
  const factory QdsBoxButtonLabelOnly({required final String label}) =
      _$QdsBoxButtonLabelOnlyImpl;

  @override
  String get label;

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsBoxButtonLabelOnlyImplCopyWith<_$QdsBoxButtonLabelOnlyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QdsBoxButtonLabelAndIconImplCopyWith<$Res>
    implements $QdsBoxButtonLabelTypeCopyWith<$Res> {
  factory _$$QdsBoxButtonLabelAndIconImplCopyWith(
          _$QdsBoxButtonLabelAndIconImpl value,
          $Res Function(_$QdsBoxButtonLabelAndIconImpl) then) =
      __$$QdsBoxButtonLabelAndIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String iconAssetString,
      QdsBoxButtonDirection buttonDirection});
}

/// @nodoc
class __$$QdsBoxButtonLabelAndIconImplCopyWithImpl<$Res>
    extends _$QdsBoxButtonLabelTypeCopyWithImpl<$Res,
        _$QdsBoxButtonLabelAndIconImpl>
    implements _$$QdsBoxButtonLabelAndIconImplCopyWith<$Res> {
  __$$QdsBoxButtonLabelAndIconImplCopyWithImpl(
      _$QdsBoxButtonLabelAndIconImpl _value,
      $Res Function(_$QdsBoxButtonLabelAndIconImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? iconAssetString = null,
    Object? buttonDirection = null,
  }) {
    return _then(_$QdsBoxButtonLabelAndIconImpl(
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
              as QdsBoxButtonDirection,
    ));
  }
}

/// @nodoc

class _$QdsBoxButtonLabelAndIconImpl implements QdsBoxButtonLabelAndIcon {
  const _$QdsBoxButtonLabelAndIconImpl(
      {required this.label,
      required this.iconAssetString,
      this.buttonDirection = QdsBoxButtonDirection.left});

  @override
  final String label;
  @override
  final String iconAssetString;
  @override
  @JsonKey()
  final QdsBoxButtonDirection buttonDirection;

  @override
  String toString() {
    return 'QdsBoxButtonLabelType.labelAndIcon(label: $label, iconAssetString: $iconAssetString, buttonDirection: $buttonDirection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsBoxButtonLabelAndIconImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.iconAssetString, iconAssetString) ||
                other.iconAssetString == iconAssetString) &&
            (identical(other.buttonDirection, buttonDirection) ||
                other.buttonDirection == buttonDirection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, iconAssetString, buttonDirection);

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsBoxButtonLabelAndIconImplCopyWith<_$QdsBoxButtonLabelAndIconImpl>
      get copyWith => __$$QdsBoxButtonLabelAndIconImplCopyWithImpl<
          _$QdsBoxButtonLabelAndIconImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String label) labelOnly,
    required TResult Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)
        labelAndIcon,
  }) {
    return labelAndIcon(label, iconAssetString, buttonDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String label)? labelOnly,
    TResult? Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)?
        labelAndIcon,
  }) {
    return labelAndIcon?.call(label, iconAssetString, buttonDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String label)? labelOnly,
    TResult Function(String label, String iconAssetString,
            QdsBoxButtonDirection buttonDirection)?
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
    required TResult Function(QdsBoxButtonLabelOnly value) labelOnly,
    required TResult Function(QdsBoxButtonLabelAndIcon value) labelAndIcon,
  }) {
    return labelAndIcon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBoxButtonLabelOnly value)? labelOnly,
    TResult? Function(QdsBoxButtonLabelAndIcon value)? labelAndIcon,
  }) {
    return labelAndIcon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBoxButtonLabelOnly value)? labelOnly,
    TResult Function(QdsBoxButtonLabelAndIcon value)? labelAndIcon,
    required TResult orElse(),
  }) {
    if (labelAndIcon != null) {
      return labelAndIcon(this);
    }
    return orElse();
  }
}

abstract class QdsBoxButtonLabelAndIcon implements QdsBoxButtonLabelType {
  const factory QdsBoxButtonLabelAndIcon(
          {required final String label,
          required final String iconAssetString,
          final QdsBoxButtonDirection buttonDirection}) =
      _$QdsBoxButtonLabelAndIconImpl;

  @override
  String get label;
  String get iconAssetString;
  QdsBoxButtonDirection get buttonDirection;

  /// Create a copy of QdsBoxButtonLabelType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsBoxButtonLabelAndIconImplCopyWith<_$QdsBoxButtonLabelAndIconImpl>
      get copyWith => throw _privateConstructorUsedError;
}
