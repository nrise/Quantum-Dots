// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wippy_header_leading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WippyHeaderLeading {
  String get asset => throw _privateConstructorUsedError;
  Color get iconColor => throw _privateConstructorUsedError;
  void Function()? get onPressed => throw _privateConstructorUsedError;

  /// Create a copy of WippyHeaderLeading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WippyHeaderLeadingCopyWith<WippyHeaderLeading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WippyHeaderLeadingCopyWith<$Res> {
  factory $WippyHeaderLeadingCopyWith(
          WippyHeaderLeading value, $Res Function(WippyHeaderLeading) then) =
      _$WippyHeaderLeadingCopyWithImpl<$Res, WippyHeaderLeading>;
  @useResult
  $Res call({String asset, Color iconColor, void Function()? onPressed});
}

/// @nodoc
class _$WippyHeaderLeadingCopyWithImpl<$Res, $Val extends WippyHeaderLeading>
    implements $WippyHeaderLeadingCopyWith<$Res> {
  _$WippyHeaderLeadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WippyHeaderLeading
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? iconColor = null,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WippyHeaderLeadingImplCopyWith<$Res>
    implements $WippyHeaderLeadingCopyWith<$Res> {
  factory _$$WippyHeaderLeadingImplCopyWith(_$WippyHeaderLeadingImpl value,
          $Res Function(_$WippyHeaderLeadingImpl) then) =
      __$$WippyHeaderLeadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String asset, Color iconColor, void Function()? onPressed});
}

/// @nodoc
class __$$WippyHeaderLeadingImplCopyWithImpl<$Res>
    extends _$WippyHeaderLeadingCopyWithImpl<$Res, _$WippyHeaderLeadingImpl>
    implements _$$WippyHeaderLeadingImplCopyWith<$Res> {
  __$$WippyHeaderLeadingImplCopyWithImpl(_$WippyHeaderLeadingImpl _value,
      $Res Function(_$WippyHeaderLeadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyHeaderLeading
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? iconColor = null,
    Object? onPressed = freezed,
  }) {
    return _then(_$WippyHeaderLeadingImpl(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$WippyHeaderLeadingImpl implements _WippyHeaderLeading {
  const _$WippyHeaderLeadingImpl(
      {required this.asset,
      this.iconColor = wippyBlack,
      this.onPressed = null});

  @override
  final String asset;
  @override
  @JsonKey()
  final Color iconColor;
  @override
  @JsonKey()
  final void Function()? onPressed;

  @override
  String toString() {
    return 'WippyHeaderLeading(asset: $asset, iconColor: $iconColor, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WippyHeaderLeadingImpl &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset, iconColor, onPressed);

  /// Create a copy of WippyHeaderLeading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WippyHeaderLeadingImplCopyWith<_$WippyHeaderLeadingImpl> get copyWith =>
      __$$WippyHeaderLeadingImplCopyWithImpl<_$WippyHeaderLeadingImpl>(
          this, _$identity);
}

abstract class _WippyHeaderLeading implements WippyHeaderLeading {
  const factory _WippyHeaderLeading(
      {required final String asset,
      final Color iconColor,
      final void Function()? onPressed}) = _$WippyHeaderLeadingImpl;

  @override
  String get asset;
  @override
  Color get iconColor;
  @override
  void Function()? get onPressed;

  /// Create a copy of WippyHeaderLeading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WippyHeaderLeadingImplCopyWith<_$WippyHeaderLeadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
