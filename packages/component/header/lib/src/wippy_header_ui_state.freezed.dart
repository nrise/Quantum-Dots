// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wippy_header_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WippyHeaderUiState {
  WippyHeaderLeading? get leading => throw _privateConstructorUsedError;
  WippyHeaderTitle? get title => throw _privateConstructorUsedError;
  WippyHeaderActions? get actions => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;
  bool get needToShowUnderline => throw _privateConstructorUsedError;

  /// Create a copy of WippyHeaderUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WippyHeaderUiStateCopyWith<WippyHeaderUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WippyHeaderUiStateCopyWith<$Res> {
  factory $WippyHeaderUiStateCopyWith(
          WippyHeaderUiState value, $Res Function(WippyHeaderUiState) then) =
      _$WippyHeaderUiStateCopyWithImpl<$Res, WippyHeaderUiState>;
  @useResult
  $Res call(
      {WippyHeaderLeading? leading,
      WippyHeaderTitle? title,
      WippyHeaderActions? actions,
      Color backgroundColor,
      bool needToShowUnderline});
}

/// @nodoc
class _$WippyHeaderUiStateCopyWithImpl<$Res, $Val extends WippyHeaderUiState>
    implements $WippyHeaderUiStateCopyWith<$Res> {
  _$WippyHeaderUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WippyHeaderUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leading = freezed,
    Object? title = freezed,
    Object? actions = freezed,
    Object? backgroundColor = null,
    Object? needToShowUnderline = null,
  }) {
    return _then(_value.copyWith(
      leading: freezed == leading
          ? _value.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as WippyHeaderLeading?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as WippyHeaderTitle?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as WippyHeaderActions?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      needToShowUnderline: null == needToShowUnderline
          ? _value.needToShowUnderline
          : needToShowUnderline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WippyHeaderUiStateImplCopyWith<$Res>
    implements $WippyHeaderUiStateCopyWith<$Res> {
  factory _$$WippyHeaderUiStateImplCopyWith(_$WippyHeaderUiStateImpl value,
          $Res Function(_$WippyHeaderUiStateImpl) then) =
      __$$WippyHeaderUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WippyHeaderLeading? leading,
      WippyHeaderTitle? title,
      WippyHeaderActions? actions,
      Color backgroundColor,
      bool needToShowUnderline});
}

/// @nodoc
class __$$WippyHeaderUiStateImplCopyWithImpl<$Res>
    extends _$WippyHeaderUiStateCopyWithImpl<$Res, _$WippyHeaderUiStateImpl>
    implements _$$WippyHeaderUiStateImplCopyWith<$Res> {
  __$$WippyHeaderUiStateImplCopyWithImpl(_$WippyHeaderUiStateImpl _value,
      $Res Function(_$WippyHeaderUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyHeaderUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leading = freezed,
    Object? title = freezed,
    Object? actions = freezed,
    Object? backgroundColor = null,
    Object? needToShowUnderline = null,
  }) {
    return _then(_$WippyHeaderUiStateImpl(
      leading: freezed == leading
          ? _value.leading
          : leading // ignore: cast_nullable_to_non_nullable
              as WippyHeaderLeading?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as WippyHeaderTitle?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as WippyHeaderActions?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      needToShowUnderline: null == needToShowUnderline
          ? _value.needToShowUnderline
          : needToShowUnderline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WippyHeaderUiStateImpl implements _WippyHeaderUiState {
  const _$WippyHeaderUiStateImpl(
      {this.leading = null,
      this.title = null,
      this.actions = null,
      this.backgroundColor = wippyWhite,
      this.needToShowUnderline = false});

  @override
  @JsonKey()
  final WippyHeaderLeading? leading;
  @override
  @JsonKey()
  final WippyHeaderTitle? title;
  @override
  @JsonKey()
  final WippyHeaderActions? actions;
  @override
  @JsonKey()
  final Color backgroundColor;
  @override
  @JsonKey()
  final bool needToShowUnderline;

  @override
  String toString() {
    return 'WippyHeaderUiState(leading: $leading, title: $title, actions: $actions, backgroundColor: $backgroundColor, needToShowUnderline: $needToShowUnderline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WippyHeaderUiStateImpl &&
            const DeepCollectionEquality().equals(other.leading, leading) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.needToShowUnderline, needToShowUnderline) ||
                other.needToShowUnderline == needToShowUnderline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(leading),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(actions),
      backgroundColor,
      needToShowUnderline);

  /// Create a copy of WippyHeaderUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WippyHeaderUiStateImplCopyWith<_$WippyHeaderUiStateImpl> get copyWith =>
      __$$WippyHeaderUiStateImplCopyWithImpl<_$WippyHeaderUiStateImpl>(
          this, _$identity);
}

abstract class _WippyHeaderUiState implements WippyHeaderUiState {
  const factory _WippyHeaderUiState(
      {final WippyHeaderLeading? leading,
      final WippyHeaderTitle? title,
      final WippyHeaderActions? actions,
      final Color backgroundColor,
      final bool needToShowUnderline}) = _$WippyHeaderUiStateImpl;

  @override
  WippyHeaderLeading? get leading;
  @override
  WippyHeaderTitle? get title;
  @override
  WippyHeaderActions? get actions;
  @override
  Color get backgroundColor;
  @override
  bool get needToShowUnderline;

  /// Create a copy of WippyHeaderUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WippyHeaderUiStateImplCopyWith<_$WippyHeaderUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
