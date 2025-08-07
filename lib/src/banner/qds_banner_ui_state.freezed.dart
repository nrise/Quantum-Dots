// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qds_banner_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QdsBannerUiState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Color get bgColor => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  QdsBannerType get bannerType => throw _privateConstructorUsedError;
  VoidCallback? get onTap => throw _privateConstructorUsedError;

  /// Create a copy of QdsBannerUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QdsBannerUiStateCopyWith<QdsBannerUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QdsBannerUiStateCopyWith<$Res> {
  factory $QdsBannerUiStateCopyWith(
          QdsBannerUiState value, $Res Function(QdsBannerUiState) then) =
      _$QdsBannerUiStateCopyWithImpl<$Res, QdsBannerUiState>;
  @useResult
  $Res call(
      {String title,
      String description,
      Color bgColor,
      String iconPath,
      QdsBannerType bannerType,
      VoidCallback? onTap});

  $QdsBannerTypeCopyWith<$Res> get bannerType;
}

/// @nodoc
class _$QdsBannerUiStateCopyWithImpl<$Res, $Val extends QdsBannerUiState>
    implements $QdsBannerUiStateCopyWith<$Res> {
  _$QdsBannerUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QdsBannerUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? bgColor = null,
    Object? iconPath = null,
    Object? bannerType = null,
    Object? onTap = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bgColor: null == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      bannerType: null == bannerType
          ? _value.bannerType
          : bannerType // ignore: cast_nullable_to_non_nullable
              as QdsBannerType,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ) as $Val);
  }

  /// Create a copy of QdsBannerUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QdsBannerTypeCopyWith<$Res> get bannerType {
    return $QdsBannerTypeCopyWith<$Res>(_value.bannerType, (value) {
      return _then(_value.copyWith(bannerType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QdsBannerUiStateImplCopyWith<$Res>
    implements $QdsBannerUiStateCopyWith<$Res> {
  factory _$$QdsBannerUiStateImplCopyWith(_$QdsBannerUiStateImpl value,
          $Res Function(_$QdsBannerUiStateImpl) then) =
      __$$QdsBannerUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      Color bgColor,
      String iconPath,
      QdsBannerType bannerType,
      VoidCallback? onTap});

  @override
  $QdsBannerTypeCopyWith<$Res> get bannerType;
}

/// @nodoc
class __$$QdsBannerUiStateImplCopyWithImpl<$Res>
    extends _$QdsBannerUiStateCopyWithImpl<$Res, _$QdsBannerUiStateImpl>
    implements _$$QdsBannerUiStateImplCopyWith<$Res> {
  __$$QdsBannerUiStateImplCopyWithImpl(_$QdsBannerUiStateImpl _value,
      $Res Function(_$QdsBannerUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QdsBannerUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? bgColor = null,
    Object? iconPath = null,
    Object? bannerType = null,
    Object? onTap = freezed,
  }) {
    return _then(_$QdsBannerUiStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bgColor: null == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      bannerType: null == bannerType
          ? _value.bannerType
          : bannerType // ignore: cast_nullable_to_non_nullable
              as QdsBannerType,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$QdsBannerUiStateImpl implements _QdsBannerUiState {
  const _$QdsBannerUiStateImpl(
      {required this.title,
      required this.description,
      required this.bgColor,
      required this.iconPath,
      this.bannerType = const QdsBannerType.defaultType(),
      this.onTap});

  @override
  final String title;
  @override
  final String description;
  @override
  final Color bgColor;
  @override
  final String iconPath;
  @override
  @JsonKey()
  final QdsBannerType bannerType;
  @override
  final VoidCallback? onTap;

  @override
  String toString() {
    return 'QdsBannerUiState(title: $title, description: $description, bgColor: $bgColor, iconPath: $iconPath, bannerType: $bannerType, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QdsBannerUiStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.bannerType, bannerType) ||
                other.bannerType == bannerType) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, bgColor, iconPath, bannerType, onTap);

  /// Create a copy of QdsBannerUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QdsBannerUiStateImplCopyWith<_$QdsBannerUiStateImpl> get copyWith =>
      __$$QdsBannerUiStateImplCopyWithImpl<_$QdsBannerUiStateImpl>(
          this, _$identity);
}

abstract class _QdsBannerUiState implements QdsBannerUiState {
  const factory _QdsBannerUiState(
      {required final String title,
      required final String description,
      required final Color bgColor,
      required final String iconPath,
      final QdsBannerType bannerType,
      final VoidCallback? onTap}) = _$QdsBannerUiStateImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  Color get bgColor;
  @override
  String get iconPath;
  @override
  QdsBannerType get bannerType;
  @override
  VoidCallback? get onTap;

  /// Create a copy of QdsBannerUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QdsBannerUiStateImplCopyWith<_$QdsBannerUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
