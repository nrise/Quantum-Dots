// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popup_image_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopupImageType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) network,
    required TResult Function(String assetName) asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl)? network,
    TResult? Function(String assetName)? asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? network,
    TResult Function(String assetName)? asset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkPopupImage value) network,
    required TResult Function(AssetPopupImage value) asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkPopupImage value)? network,
    TResult? Function(AssetPopupImage value)? asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkPopupImage value)? network,
    TResult Function(AssetPopupImage value)? asset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopupImageTypeCopyWith<$Res> {
  factory $PopupImageTypeCopyWith(
          PopupImageType value, $Res Function(PopupImageType) then) =
      _$PopupImageTypeCopyWithImpl<$Res, PopupImageType>;
}

/// @nodoc
class _$PopupImageTypeCopyWithImpl<$Res, $Val extends PopupImageType>
    implements $PopupImageTypeCopyWith<$Res> {
  _$PopupImageTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkPopupImageImplCopyWith<$Res> {
  factory _$$NetworkPopupImageImplCopyWith(_$NetworkPopupImageImpl value,
          $Res Function(_$NetworkPopupImageImpl) then) =
      __$$NetworkPopupImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$NetworkPopupImageImplCopyWithImpl<$Res>
    extends _$PopupImageTypeCopyWithImpl<$Res, _$NetworkPopupImageImpl>
    implements _$$NetworkPopupImageImplCopyWith<$Res> {
  __$$NetworkPopupImageImplCopyWithImpl(_$NetworkPopupImageImpl _value,
      $Res Function(_$NetworkPopupImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$NetworkPopupImageImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkPopupImageImpl implements NetworkPopupImage {
  const _$NetworkPopupImageImpl({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PopupImageType.network(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkPopupImageImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkPopupImageImplCopyWith<_$NetworkPopupImageImpl> get copyWith =>
      __$$NetworkPopupImageImplCopyWithImpl<_$NetworkPopupImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) network,
    required TResult Function(String assetName) asset,
  }) {
    return network(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl)? network,
    TResult? Function(String assetName)? asset,
  }) {
    return network?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? network,
    TResult Function(String assetName)? asset,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkPopupImage value) network,
    required TResult Function(AssetPopupImage value) asset,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkPopupImage value)? network,
    TResult? Function(AssetPopupImage value)? asset,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkPopupImage value)? network,
    TResult Function(AssetPopupImage value)? asset,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkPopupImage implements PopupImageType {
  const factory NetworkPopupImage({required final String imageUrl}) =
      _$NetworkPopupImageImpl;

  String get imageUrl;

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkPopupImageImplCopyWith<_$NetworkPopupImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetPopupImageImplCopyWith<$Res> {
  factory _$$AssetPopupImageImplCopyWith(_$AssetPopupImageImpl value,
          $Res Function(_$AssetPopupImageImpl) then) =
      __$$AssetPopupImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String assetName});
}

/// @nodoc
class __$$AssetPopupImageImplCopyWithImpl<$Res>
    extends _$PopupImageTypeCopyWithImpl<$Res, _$AssetPopupImageImpl>
    implements _$$AssetPopupImageImplCopyWith<$Res> {
  __$$AssetPopupImageImplCopyWithImpl(
      _$AssetPopupImageImpl _value, $Res Function(_$AssetPopupImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetName = null,
  }) {
    return _then(_$AssetPopupImageImpl(
      assetName: null == assetName
          ? _value.assetName
          : assetName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetPopupImageImpl implements AssetPopupImage {
  const _$AssetPopupImageImpl({required this.assetName});

  @override
  final String assetName;

  @override
  String toString() {
    return 'PopupImageType.asset(assetName: $assetName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetPopupImageImpl &&
            (identical(other.assetName, assetName) ||
                other.assetName == assetName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assetName);

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetPopupImageImplCopyWith<_$AssetPopupImageImpl> get copyWith =>
      __$$AssetPopupImageImplCopyWithImpl<_$AssetPopupImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) network,
    required TResult Function(String assetName) asset,
  }) {
    return asset(assetName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageUrl)? network,
    TResult? Function(String assetName)? asset,
  }) {
    return asset?.call(assetName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? network,
    TResult Function(String assetName)? asset,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(assetName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkPopupImage value) network,
    required TResult Function(AssetPopupImage value) asset,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkPopupImage value)? network,
    TResult? Function(AssetPopupImage value)? asset,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkPopupImage value)? network,
    TResult Function(AssetPopupImage value)? asset,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }
}

abstract class AssetPopupImage implements PopupImageType {
  const factory AssetPopupImage({required final String assetName}) =
      _$AssetPopupImageImpl;

  String get assetName;

  /// Create a copy of PopupImageType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetPopupImageImplCopyWith<_$AssetPopupImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
