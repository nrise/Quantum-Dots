// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_input_error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextInputErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) error,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? error,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputError value) error,
    required TResult Function(TextInputNoneError value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputError value)? error,
    TResult? Function(TextInputNoneError value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputError value)? error,
    TResult Function(TextInputNoneError value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextInputErrorStateCopyWith<$Res> {
  factory $TextInputErrorStateCopyWith(
          TextInputErrorState value, $Res Function(TextInputErrorState) then) =
      _$TextInputErrorStateCopyWithImpl<$Res, TextInputErrorState>;
}

/// @nodoc
class _$TextInputErrorStateCopyWithImpl<$Res, $Val extends TextInputErrorState>
    implements $TextInputErrorStateCopyWith<$Res> {
  _$TextInputErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextInputErrorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextInputErrorImplCopyWith<$Res> {
  factory _$$TextInputErrorImplCopyWith(_$TextInputErrorImpl value,
          $Res Function(_$TextInputErrorImpl) then) =
      __$$TextInputErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$TextInputErrorImplCopyWithImpl<$Res>
    extends _$TextInputErrorStateCopyWithImpl<$Res, _$TextInputErrorImpl>
    implements _$$TextInputErrorImplCopyWith<$Res> {
  __$$TextInputErrorImplCopyWithImpl(
      _$TextInputErrorImpl _value, $Res Function(_$TextInputErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextInputErrorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$TextInputErrorImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TextInputErrorImpl implements TextInputError {
  const _$TextInputErrorImpl({this.errorMessage});

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TextInputErrorState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextInputErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of TextInputErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextInputErrorImplCopyWith<_$TextInputErrorImpl> get copyWith =>
      __$$TextInputErrorImplCopyWithImpl<_$TextInputErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) error,
    required TResult Function() none,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? error,
    TResult? Function()? none,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputError value) error,
    required TResult Function(TextInputNoneError value) none,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputError value)? error,
    TResult? Function(TextInputNoneError value)? none,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputError value)? error,
    TResult Function(TextInputNoneError value)? none,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TextInputError implements TextInputErrorState {
  const factory TextInputError({final String? errorMessage}) =
      _$TextInputErrorImpl;

  String? get errorMessage;

  /// Create a copy of TextInputErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextInputErrorImplCopyWith<_$TextInputErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextInputNoneErrorImplCopyWith<$Res> {
  factory _$$TextInputNoneErrorImplCopyWith(_$TextInputNoneErrorImpl value,
          $Res Function(_$TextInputNoneErrorImpl) then) =
      __$$TextInputNoneErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextInputNoneErrorImplCopyWithImpl<$Res>
    extends _$TextInputErrorStateCopyWithImpl<$Res, _$TextInputNoneErrorImpl>
    implements _$$TextInputNoneErrorImplCopyWith<$Res> {
  __$$TextInputNoneErrorImplCopyWithImpl(_$TextInputNoneErrorImpl _value,
      $Res Function(_$TextInputNoneErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextInputErrorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TextInputNoneErrorImpl implements TextInputNoneError {
  const _$TextInputNoneErrorImpl();

  @override
  String toString() {
    return 'TextInputErrorState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TextInputNoneErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? errorMessage) error,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? errorMessage)? error,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? errorMessage)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextInputError value) error,
    required TResult Function(TextInputNoneError value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextInputError value)? error,
    TResult? Function(TextInputNoneError value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextInputError value)? error,
    TResult Function(TextInputNoneError value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class TextInputNoneError implements TextInputErrorState {
  const factory TextInputNoneError() = _$TextInputNoneErrorImpl;
}
