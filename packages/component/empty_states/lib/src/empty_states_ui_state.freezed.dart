// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empty_states_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmptyStatesUiState {
  String? get iconAssetName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get buttonLabel => throw _privateConstructorUsedError;
  ButtonColorType get buttonColorType => throw _privateConstructorUsedError;

  /// Create a copy of EmptyStatesUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmptyStatesUiStateCopyWith<EmptyStatesUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyStatesUiStateCopyWith<$Res> {
  factory $EmptyStatesUiStateCopyWith(
          EmptyStatesUiState value, $Res Function(EmptyStatesUiState) then) =
      _$EmptyStatesUiStateCopyWithImpl<$Res, EmptyStatesUiState>;
  @useResult
  $Res call(
      {String? iconAssetName,
      String? title,
      String? description,
      String? buttonLabel,
      ButtonColorType buttonColorType});
}

/// @nodoc
class _$EmptyStatesUiStateCopyWithImpl<$Res, $Val extends EmptyStatesUiState>
    implements $EmptyStatesUiStateCopyWith<$Res> {
  _$EmptyStatesUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmptyStatesUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconAssetName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? buttonLabel = freezed,
    Object? buttonColorType = freezed,
  }) {
    return _then(_value.copyWith(
      iconAssetName: freezed == iconAssetName
          ? _value.iconAssetName
          : iconAssetName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonLabel: freezed == buttonLabel
          ? _value.buttonLabel
          : buttonLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonColorType: freezed == buttonColorType
          ? _value.buttonColorType
          : buttonColorType // ignore: cast_nullable_to_non_nullable
              as ButtonColorType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyStatesUiStateImplCopyWith<$Res>
    implements $EmptyStatesUiStateCopyWith<$Res> {
  factory _$$EmptyStatesUiStateImplCopyWith(_$EmptyStatesUiStateImpl value,
          $Res Function(_$EmptyStatesUiStateImpl) then) =
      __$$EmptyStatesUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iconAssetName,
      String? title,
      String? description,
      String? buttonLabel,
      ButtonColorType buttonColorType});
}

/// @nodoc
class __$$EmptyStatesUiStateImplCopyWithImpl<$Res>
    extends _$EmptyStatesUiStateCopyWithImpl<$Res, _$EmptyStatesUiStateImpl>
    implements _$$EmptyStatesUiStateImplCopyWith<$Res> {
  __$$EmptyStatesUiStateImplCopyWithImpl(_$EmptyStatesUiStateImpl _value,
      $Res Function(_$EmptyStatesUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmptyStatesUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconAssetName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? buttonLabel = freezed,
    Object? buttonColorType = freezed,
  }) {
    return _then(_$EmptyStatesUiStateImpl(
      iconAssetName: freezed == iconAssetName
          ? _value.iconAssetName
          : iconAssetName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonLabel: freezed == buttonLabel
          ? _value.buttonLabel
          : buttonLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      buttonColorType: freezed == buttonColorType
          ? _value.buttonColorType
          : buttonColorType // ignore: cast_nullable_to_non_nullable
              as ButtonColorType,
    ));
  }
}

/// @nodoc

class _$EmptyStatesUiStateImpl implements _EmptyStatesUiState {
  const _$EmptyStatesUiStateImpl(
      {this.iconAssetName = null,
      this.title = null,
      this.description = null,
      this.buttonLabel = null,
      this.buttonColorType = const ButtonColorType.tertiary()});

  @override
  @JsonKey()
  final String? iconAssetName;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? buttonLabel;
  @override
  @JsonKey()
  final ButtonColorType buttonColorType;

  @override
  String toString() {
    return 'EmptyStatesUiState(iconAssetName: $iconAssetName, title: $title, description: $description, buttonLabel: $buttonLabel, buttonColorType: $buttonColorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyStatesUiStateImpl &&
            (identical(other.iconAssetName, iconAssetName) ||
                other.iconAssetName == iconAssetName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.buttonLabel, buttonLabel) ||
                other.buttonLabel == buttonLabel) &&
            const DeepCollectionEquality()
                .equals(other.buttonColorType, buttonColorType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      iconAssetName,
      title,
      description,
      buttonLabel,
      const DeepCollectionEquality().hash(buttonColorType));

  /// Create a copy of EmptyStatesUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyStatesUiStateImplCopyWith<_$EmptyStatesUiStateImpl> get copyWith =>
      __$$EmptyStatesUiStateImplCopyWithImpl<_$EmptyStatesUiStateImpl>(
          this, _$identity);
}

abstract class _EmptyStatesUiState implements EmptyStatesUiState {
  const factory _EmptyStatesUiState(
      {final String? iconAssetName,
      final String? title,
      final String? description,
      final String? buttonLabel,
      final ButtonColorType buttonColorType}) = _$EmptyStatesUiStateImpl;

  @override
  String? get iconAssetName;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get buttonLabel;
  @override
  ButtonColorType get buttonColorType;

  /// Create a copy of EmptyStatesUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyStatesUiStateImplCopyWith<_$EmptyStatesUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
