// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qds_banner_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QdsBannerType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color iconColor) arrow,
    required TResult Function() newType,
    required TResult Function() defaultType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color iconColor)? arrow,
    TResult? Function()? newType,
    TResult? Function()? defaultType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color iconColor)? arrow,
    TResult Function()? newType,
    TResult Function()? defaultType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsBannerTypeArrow value) arrow,
    required TResult Function(QdsBannerTypeNew value) newType,
    required TResult Function(QdsBannerTypeDefault value) defaultType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBannerTypeArrow value)? arrow,
    TResult? Function(QdsBannerTypeNew value)? newType,
    TResult? Function(QdsBannerTypeDefault value)? defaultType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBannerTypeArrow value)? arrow,
    TResult Function(QdsBannerTypeNew value)? newType,
    TResult Function(QdsBannerTypeDefault value)? defaultType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QdsBannerTypeCopyWith<$Res> {
  factory $QdsBannerTypeCopyWith(
          QdsBannerType value, $Res Function(QdsBannerType) then) =
      _$QdsBannerTypeCopyWithImpl<$Res, QdsBannerType>;
}

/// @nodoc
class _$QdsBannerTypeCopyWithImpl<$Res, $Val extends QdsBannerType>
    implements $QdsBannerTypeCopyWith<$Res> {
  _$QdsBannerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QdsBannerType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QdsBannerTypeArrowImplCopyWith<$Res> {
  factory _$$QdsBannerTypeArrowImplCopyWith(_$QdsBannerTypeArrowImpl value,
          $Res Function(_$QdsBannerTypeArrowImpl) then) =
      __$$QdsBannerTypeArrowImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color iconColor});
}

/// @nodoc
class __$$QdsBannerTypeArrowImplCopyWithImpl<$Res>
    extends _$QdsBannerTypeCopyWithImpl<$Res, _$QdsBannerTypeArrowImpl>
    implements _$$QdsBannerTypeArrowImplCopyWith<$Res> {
  __$$QdsBannerTypeArrowImplCopyWithImpl(_$QdsBannerTypeArrowImpl _value,
      $Res Function(_$QdsBannerTypeArrowImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsBannerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconColor = null,
  }) {
    return _then(_$QdsBannerTypeArrowImpl(
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$QdsBannerTypeArrowImpl implements QdsBannerTypeArrow {
  const _$QdsBannerTypeArrowImpl({this.iconColor = wippyGray500});

  @override
  @JsonKey()
  final Color iconColor;

  @override
  String toString() {
    return 'QdsBannerType.arrow(iconColor: $iconColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsBannerTypeArrowImpl &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconColor);

  /// Create a copy of QdsBannerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsBannerTypeArrowImplCopyWith<_$QdsBannerTypeArrowImpl> get copyWith =>
      __$$QdsBannerTypeArrowImplCopyWithImpl<_$QdsBannerTypeArrowImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color iconColor) arrow,
    required TResult Function() newType,
    required TResult Function() defaultType,
  }) {
    return arrow(iconColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color iconColor)? arrow,
    TResult? Function()? newType,
    TResult? Function()? defaultType,
  }) {
    return arrow?.call(iconColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color iconColor)? arrow,
    TResult Function()? newType,
    TResult Function()? defaultType,
    required TResult orElse(),
  }) {
    if (arrow != null) {
      return arrow(iconColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsBannerTypeArrow value) arrow,
    required TResult Function(QdsBannerTypeNew value) newType,
    required TResult Function(QdsBannerTypeDefault value) defaultType,
  }) {
    return arrow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBannerTypeArrow value)? arrow,
    TResult? Function(QdsBannerTypeNew value)? newType,
    TResult? Function(QdsBannerTypeDefault value)? defaultType,
  }) {
    return arrow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBannerTypeArrow value)? arrow,
    TResult Function(QdsBannerTypeNew value)? newType,
    TResult Function(QdsBannerTypeDefault value)? defaultType,
    required TResult orElse(),
  }) {
    if (arrow != null) {
      return arrow(this);
    }
    return orElse();
  }
}

abstract class QdsBannerTypeArrow implements QdsBannerType {
  const factory QdsBannerTypeArrow({final Color iconColor}) =
      _$QdsBannerTypeArrowImpl;

  Color get iconColor;

  /// Create a copy of QdsBannerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsBannerTypeArrowImplCopyWith<_$QdsBannerTypeArrowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QdsBannerTypeNewImplCopyWith<$Res> {
  factory _$$QdsBannerTypeNewImplCopyWith(_$QdsBannerTypeNewImpl value,
          $Res Function(_$QdsBannerTypeNewImpl) then) =
      __$$QdsBannerTypeNewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QdsBannerTypeNewImplCopyWithImpl<$Res>
    extends _$QdsBannerTypeCopyWithImpl<$Res, _$QdsBannerTypeNewImpl>
    implements _$$QdsBannerTypeNewImplCopyWith<$Res> {
  __$$QdsBannerTypeNewImplCopyWithImpl(_$QdsBannerTypeNewImpl _value,
      $Res Function(_$QdsBannerTypeNewImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsBannerType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$QdsBannerTypeNewImpl implements QdsBannerTypeNew {
  const _$QdsBannerTypeNewImpl();

  @override
  String toString() {
    return 'QdsBannerType.newType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QdsBannerTypeNewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color iconColor) arrow,
    required TResult Function() newType,
    required TResult Function() defaultType,
  }) {
    return newType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color iconColor)? arrow,
    TResult? Function()? newType,
    TResult? Function()? defaultType,
  }) {
    return newType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color iconColor)? arrow,
    TResult Function()? newType,
    TResult Function()? defaultType,
    required TResult orElse(),
  }) {
    if (newType != null) {
      return newType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsBannerTypeArrow value) arrow,
    required TResult Function(QdsBannerTypeNew value) newType,
    required TResult Function(QdsBannerTypeDefault value) defaultType,
  }) {
    return newType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBannerTypeArrow value)? arrow,
    TResult? Function(QdsBannerTypeNew value)? newType,
    TResult? Function(QdsBannerTypeDefault value)? defaultType,
  }) {
    return newType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBannerTypeArrow value)? arrow,
    TResult Function(QdsBannerTypeNew value)? newType,
    TResult Function(QdsBannerTypeDefault value)? defaultType,
    required TResult orElse(),
  }) {
    if (newType != null) {
      return newType(this);
    }
    return orElse();
  }
}

abstract class QdsBannerTypeNew implements QdsBannerType {
  const factory QdsBannerTypeNew() = _$QdsBannerTypeNewImpl;
}

/// @nodoc
abstract class _$$QdsBannerTypeDefaultImplCopyWith<$Res> {
  factory _$$QdsBannerTypeDefaultImplCopyWith(_$QdsBannerTypeDefaultImpl value,
          $Res Function(_$QdsBannerTypeDefaultImpl) then) =
      __$$QdsBannerTypeDefaultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QdsBannerTypeDefaultImplCopyWithImpl<$Res>
    extends _$QdsBannerTypeCopyWithImpl<$Res, _$QdsBannerTypeDefaultImpl>
    implements _$$QdsBannerTypeDefaultImplCopyWith<$Res> {
  __$$QdsBannerTypeDefaultImplCopyWithImpl(_$QdsBannerTypeDefaultImpl _value,
      $Res Function(_$QdsBannerTypeDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsBannerType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$QdsBannerTypeDefaultImpl implements QdsBannerTypeDefault {
  const _$QdsBannerTypeDefaultImpl();

  @override
  String toString() {
    return 'QdsBannerType.defaultType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsBannerTypeDefaultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color iconColor) arrow,
    required TResult Function() newType,
    required TResult Function() defaultType,
  }) {
    return defaultType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color iconColor)? arrow,
    TResult? Function()? newType,
    TResult? Function()? defaultType,
  }) {
    return defaultType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color iconColor)? arrow,
    TResult Function()? newType,
    TResult Function()? defaultType,
    required TResult orElse(),
  }) {
    if (defaultType != null) {
      return defaultType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QdsBannerTypeArrow value) arrow,
    required TResult Function(QdsBannerTypeNew value) newType,
    required TResult Function(QdsBannerTypeDefault value) defaultType,
  }) {
    return defaultType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QdsBannerTypeArrow value)? arrow,
    TResult? Function(QdsBannerTypeNew value)? newType,
    TResult? Function(QdsBannerTypeDefault value)? defaultType,
  }) {
    return defaultType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QdsBannerTypeArrow value)? arrow,
    TResult Function(QdsBannerTypeNew value)? newType,
    TResult Function(QdsBannerTypeDefault value)? defaultType,
    required TResult orElse(),
  }) {
    if (defaultType != null) {
      return defaultType(this);
    }
    return orElse();
  }
}

abstract class QdsBannerTypeDefault implements QdsBannerType {
  const factory QdsBannerTypeDefault() = _$QdsBannerTypeDefaultImpl;
}
