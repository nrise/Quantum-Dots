// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wippy_toast_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WippyToastUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? messageKey) visible,
    required TResult Function() invisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? messageKey)? visible,
    TResult? Function()? invisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? messageKey)? visible,
    TResult Function()? invisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibleWippyToastUiState value) visible,
    required TResult Function(InvisibleWippyToastUiState value) invisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibleWippyToastUiState value)? visible,
    TResult? Function(InvisibleWippyToastUiState value)? invisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibleWippyToastUiState value)? visible,
    TResult Function(InvisibleWippyToastUiState value)? invisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WippyToastUiStateCopyWith<$Res> {
  factory $WippyToastUiStateCopyWith(
          WippyToastUiState value, $Res Function(WippyToastUiState) then) =
      _$WippyToastUiStateCopyWithImpl<$Res, WippyToastUiState>;
}

/// @nodoc
class _$WippyToastUiStateCopyWithImpl<$Res, $Val extends WippyToastUiState>
    implements $WippyToastUiStateCopyWith<$Res> {
  _$WippyToastUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WippyToastUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VisibleWippyToastUiStateImplCopyWith<$Res> {
  factory _$$VisibleWippyToastUiStateImplCopyWith(
          _$VisibleWippyToastUiStateImpl value,
          $Res Function(_$VisibleWippyToastUiStateImpl) then) =
      __$$VisibleWippyToastUiStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? messageKey});
}

/// @nodoc
class __$$VisibleWippyToastUiStateImplCopyWithImpl<$Res>
    extends _$WippyToastUiStateCopyWithImpl<$Res,
        _$VisibleWippyToastUiStateImpl>
    implements _$$VisibleWippyToastUiStateImplCopyWith<$Res> {
  __$$VisibleWippyToastUiStateImplCopyWithImpl(
      _$VisibleWippyToastUiStateImpl _value,
      $Res Function(_$VisibleWippyToastUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyToastUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? messageKey = freezed,
  }) {
    return _then(_$VisibleWippyToastUiStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageKey: freezed == messageKey
          ? _value.messageKey
          : messageKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VisibleWippyToastUiStateImpl implements VisibleWippyToastUiState {
  const _$VisibleWippyToastUiStateImpl(
      {required this.message, this.messageKey});

  @override
  final String message;
  @override
  final String? messageKey;

  @override
  String toString() {
    return 'WippyToastUiState.visible(message: $message, messageKey: $messageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibleWippyToastUiStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageKey, messageKey) ||
                other.messageKey == messageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, messageKey);

  /// Create a copy of WippyToastUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibleWippyToastUiStateImplCopyWith<_$VisibleWippyToastUiStateImpl>
      get copyWith => __$$VisibleWippyToastUiStateImplCopyWithImpl<
          _$VisibleWippyToastUiStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? messageKey) visible,
    required TResult Function() invisible,
  }) {
    return visible(message, messageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? messageKey)? visible,
    TResult? Function()? invisible,
  }) {
    return visible?.call(message, messageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? messageKey)? visible,
    TResult Function()? invisible,
    required TResult orElse(),
  }) {
    if (visible != null) {
      return visible(message, messageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibleWippyToastUiState value) visible,
    required TResult Function(InvisibleWippyToastUiState value) invisible,
  }) {
    return visible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibleWippyToastUiState value)? visible,
    TResult? Function(InvisibleWippyToastUiState value)? invisible,
  }) {
    return visible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibleWippyToastUiState value)? visible,
    TResult Function(InvisibleWippyToastUiState value)? invisible,
    required TResult orElse(),
  }) {
    if (visible != null) {
      return visible(this);
    }
    return orElse();
  }
}

abstract class VisibleWippyToastUiState implements WippyToastUiState {
  const factory VisibleWippyToastUiState(
      {required final String message,
      final String? messageKey}) = _$VisibleWippyToastUiStateImpl;

  String get message;
  String? get messageKey;

  /// Create a copy of WippyToastUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibleWippyToastUiStateImplCopyWith<_$VisibleWippyToastUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvisibleWippyToastUiStateImplCopyWith<$Res> {
  factory _$$InvisibleWippyToastUiStateImplCopyWith(
          _$InvisibleWippyToastUiStateImpl value,
          $Res Function(_$InvisibleWippyToastUiStateImpl) then) =
      __$$InvisibleWippyToastUiStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvisibleWippyToastUiStateImplCopyWithImpl<$Res>
    extends _$WippyToastUiStateCopyWithImpl<$Res,
        _$InvisibleWippyToastUiStateImpl>
    implements _$$InvisibleWippyToastUiStateImplCopyWith<$Res> {
  __$$InvisibleWippyToastUiStateImplCopyWithImpl(
      _$InvisibleWippyToastUiStateImpl _value,
      $Res Function(_$InvisibleWippyToastUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyToastUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvisibleWippyToastUiStateImpl implements InvisibleWippyToastUiState {
  const _$InvisibleWippyToastUiStateImpl();

  @override
  String toString() {
    return 'WippyToastUiState.invisible()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvisibleWippyToastUiStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, String? messageKey) visible,
    required TResult Function() invisible,
  }) {
    return invisible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String? messageKey)? visible,
    TResult? Function()? invisible,
  }) {
    return invisible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String? messageKey)? visible,
    TResult Function()? invisible,
    required TResult orElse(),
  }) {
    if (invisible != null) {
      return invisible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VisibleWippyToastUiState value) visible,
    required TResult Function(InvisibleWippyToastUiState value) invisible,
  }) {
    return invisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VisibleWippyToastUiState value)? visible,
    TResult? Function(InvisibleWippyToastUiState value)? invisible,
  }) {
    return invisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VisibleWippyToastUiState value)? visible,
    TResult Function(InvisibleWippyToastUiState value)? invisible,
    required TResult orElse(),
  }) {
    if (invisible != null) {
      return invisible(this);
    }
    return orElse();
  }
}

abstract class InvisibleWippyToastUiState implements WippyToastUiState {
  const factory InvisibleWippyToastUiState() = _$InvisibleWippyToastUiStateImpl;
}
