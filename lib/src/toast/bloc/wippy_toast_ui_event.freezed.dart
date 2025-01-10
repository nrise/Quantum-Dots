// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wippy_toast_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WippyToastUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? messageKey, bool isCancelableMessage)
        show,
    required TResult Function() endedVisibleAnimation,
    required TResult Function() endedInvisibleAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult? Function()? endedVisibleAnimation,
    TResult? Function()? endedInvisibleAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult Function()? endedVisibleAnimation,
    TResult Function()? endedInvisibleAnimation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowWippyToastUiEvent value) show,
    required TResult Function(EndedVisibleAnimationToastUiEvent value)
        endedVisibleAnimation,
    required TResult Function(EndedInvisibleAnimationToastUiEvent value)
        endedInvisibleAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowWippyToastUiEvent value)? show,
    TResult? Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult? Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowWippyToastUiEvent value)? show,
    TResult Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WippyToastUiEventCopyWith<$Res> {
  factory $WippyToastUiEventCopyWith(
          WippyToastUiEvent value, $Res Function(WippyToastUiEvent) then) =
      _$WippyToastUiEventCopyWithImpl<$Res, WippyToastUiEvent>;
}

/// @nodoc
class _$WippyToastUiEventCopyWithImpl<$Res, $Val extends WippyToastUiEvent>
    implements $WippyToastUiEventCopyWith<$Res> {
  _$WippyToastUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WippyToastUiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowWippyToastUiEventImplCopyWith<$Res> {
  factory _$$ShowWippyToastUiEventImplCopyWith(
          _$ShowWippyToastUiEventImpl value,
          $Res Function(_$ShowWippyToastUiEventImpl) then) =
      __$$ShowWippyToastUiEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? messageKey, bool isCancelableMessage});
}

/// @nodoc
class __$$ShowWippyToastUiEventImplCopyWithImpl<$Res>
    extends _$WippyToastUiEventCopyWithImpl<$Res, _$ShowWippyToastUiEventImpl>
    implements _$$ShowWippyToastUiEventImplCopyWith<$Res> {
  __$$ShowWippyToastUiEventImplCopyWithImpl(_$ShowWippyToastUiEventImpl _value,
      $Res Function(_$ShowWippyToastUiEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyToastUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? messageKey = freezed,
    Object? isCancelableMessage = null,
  }) {
    return _then(_$ShowWippyToastUiEventImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageKey: freezed == messageKey
          ? _value.messageKey
          : messageKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancelableMessage: null == isCancelableMessage
          ? _value.isCancelableMessage
          : isCancelableMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowWippyToastUiEventImpl implements ShowWippyToastUiEvent {
  const _$ShowWippyToastUiEventImpl(
      {required this.message,
      required this.messageKey,
      this.isCancelableMessage = true});

  @override
  final String message;
  @override
  final String? messageKey;
  @override
  @JsonKey()
  final bool isCancelableMessage;

  @override
  String toString() {
    return 'WippyToastUiEvent.show(message: $message, messageKey: $messageKey, isCancelableMessage: $isCancelableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowWippyToastUiEventImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageKey, messageKey) ||
                other.messageKey == messageKey) &&
            (identical(other.isCancelableMessage, isCancelableMessage) ||
                other.isCancelableMessage == isCancelableMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, messageKey, isCancelableMessage);

  /// Create a copy of WippyToastUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowWippyToastUiEventImplCopyWith<_$ShowWippyToastUiEventImpl>
      get copyWith => __$$ShowWippyToastUiEventImplCopyWithImpl<
          _$ShowWippyToastUiEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? messageKey, bool isCancelableMessage)
        show,
    required TResult Function() endedVisibleAnimation,
    required TResult Function() endedInvisibleAnimation,
  }) {
    return show(message, messageKey, isCancelableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult? Function()? endedVisibleAnimation,
    TResult? Function()? endedInvisibleAnimation,
  }) {
    return show?.call(message, messageKey, isCancelableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult Function()? endedVisibleAnimation,
    TResult Function()? endedInvisibleAnimation,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(message, messageKey, isCancelableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowWippyToastUiEvent value) show,
    required TResult Function(EndedVisibleAnimationToastUiEvent value)
        endedVisibleAnimation,
    required TResult Function(EndedInvisibleAnimationToastUiEvent value)
        endedInvisibleAnimation,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowWippyToastUiEvent value)? show,
    TResult? Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult? Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowWippyToastUiEvent value)? show,
    TResult Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class ShowWippyToastUiEvent implements WippyToastUiEvent {
  const factory ShowWippyToastUiEvent(
      {required final String message,
      required final String? messageKey,
      final bool isCancelableMessage}) = _$ShowWippyToastUiEventImpl;

  String get message;
  String? get messageKey;
  bool get isCancelableMessage;

  /// Create a copy of WippyToastUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowWippyToastUiEventImplCopyWith<_$ShowWippyToastUiEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndedVisibleAnimationToastUiEventImplCopyWith<$Res> {
  factory _$$EndedVisibleAnimationToastUiEventImplCopyWith(
          _$EndedVisibleAnimationToastUiEventImpl value,
          $Res Function(_$EndedVisibleAnimationToastUiEventImpl) then) =
      __$$EndedVisibleAnimationToastUiEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndedVisibleAnimationToastUiEventImplCopyWithImpl<$Res>
    extends _$WippyToastUiEventCopyWithImpl<$Res,
        _$EndedVisibleAnimationToastUiEventImpl>
    implements _$$EndedVisibleAnimationToastUiEventImplCopyWith<$Res> {
  __$$EndedVisibleAnimationToastUiEventImplCopyWithImpl(
      _$EndedVisibleAnimationToastUiEventImpl _value,
      $Res Function(_$EndedVisibleAnimationToastUiEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyToastUiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EndedVisibleAnimationToastUiEventImpl
    implements EndedVisibleAnimationToastUiEvent {
  const _$EndedVisibleAnimationToastUiEventImpl();

  @override
  String toString() {
    return 'WippyToastUiEvent.endedVisibleAnimation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndedVisibleAnimationToastUiEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? messageKey, bool isCancelableMessage)
        show,
    required TResult Function() endedVisibleAnimation,
    required TResult Function() endedInvisibleAnimation,
  }) {
    return endedVisibleAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult? Function()? endedVisibleAnimation,
    TResult? Function()? endedInvisibleAnimation,
  }) {
    return endedVisibleAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult Function()? endedVisibleAnimation,
    TResult Function()? endedInvisibleAnimation,
    required TResult orElse(),
  }) {
    if (endedVisibleAnimation != null) {
      return endedVisibleAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowWippyToastUiEvent value) show,
    required TResult Function(EndedVisibleAnimationToastUiEvent value)
        endedVisibleAnimation,
    required TResult Function(EndedInvisibleAnimationToastUiEvent value)
        endedInvisibleAnimation,
  }) {
    return endedVisibleAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowWippyToastUiEvent value)? show,
    TResult? Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult? Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
  }) {
    return endedVisibleAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowWippyToastUiEvent value)? show,
    TResult Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
    required TResult orElse(),
  }) {
    if (endedVisibleAnimation != null) {
      return endedVisibleAnimation(this);
    }
    return orElse();
  }
}

abstract class EndedVisibleAnimationToastUiEvent implements WippyToastUiEvent {
  const factory EndedVisibleAnimationToastUiEvent() =
      _$EndedVisibleAnimationToastUiEventImpl;
}

/// @nodoc
abstract class _$$EndedInvisibleAnimationToastUiEventImplCopyWith<$Res> {
  factory _$$EndedInvisibleAnimationToastUiEventImplCopyWith(
          _$EndedInvisibleAnimationToastUiEventImpl value,
          $Res Function(_$EndedInvisibleAnimationToastUiEventImpl) then) =
      __$$EndedInvisibleAnimationToastUiEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndedInvisibleAnimationToastUiEventImplCopyWithImpl<$Res>
    extends _$WippyToastUiEventCopyWithImpl<$Res,
        _$EndedInvisibleAnimationToastUiEventImpl>
    implements _$$EndedInvisibleAnimationToastUiEventImplCopyWith<$Res> {
  __$$EndedInvisibleAnimationToastUiEventImplCopyWithImpl(
      _$EndedInvisibleAnimationToastUiEventImpl _value,
      $Res Function(_$EndedInvisibleAnimationToastUiEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WippyToastUiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EndedInvisibleAnimationToastUiEventImpl
    implements EndedInvisibleAnimationToastUiEvent {
  const _$EndedInvisibleAnimationToastUiEventImpl();

  @override
  String toString() {
    return 'WippyToastUiEvent.endedInvisibleAnimation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndedInvisibleAnimationToastUiEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String? messageKey, bool isCancelableMessage)
        show,
    required TResult Function() endedVisibleAnimation,
    required TResult Function() endedInvisibleAnimation,
  }) {
    return endedInvisibleAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult? Function()? endedVisibleAnimation,
    TResult? Function()? endedInvisibleAnimation,
  }) {
    return endedInvisibleAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, String? messageKey, bool isCancelableMessage)?
        show,
    TResult Function()? endedVisibleAnimation,
    TResult Function()? endedInvisibleAnimation,
    required TResult orElse(),
  }) {
    if (endedInvisibleAnimation != null) {
      return endedInvisibleAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowWippyToastUiEvent value) show,
    required TResult Function(EndedVisibleAnimationToastUiEvent value)
        endedVisibleAnimation,
    required TResult Function(EndedInvisibleAnimationToastUiEvent value)
        endedInvisibleAnimation,
  }) {
    return endedInvisibleAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowWippyToastUiEvent value)? show,
    TResult? Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult? Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
  }) {
    return endedInvisibleAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowWippyToastUiEvent value)? show,
    TResult Function(EndedVisibleAnimationToastUiEvent value)?
        endedVisibleAnimation,
    TResult Function(EndedInvisibleAnimationToastUiEvent value)?
        endedInvisibleAnimation,
    required TResult orElse(),
  }) {
    if (endedInvisibleAnimation != null) {
      return endedInvisibleAnimation(this);
    }
    return orElse();
  }
}

abstract class EndedInvisibleAnimationToastUiEvent
    implements WippyToastUiEvent {
  const factory EndedInvisibleAnimationToastUiEvent() =
      _$EndedInvisibleAnimationToastUiEventImpl;
}
