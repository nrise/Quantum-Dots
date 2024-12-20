// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_selective_chips_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultiSelectiveChipsUiState {
  Iterable<MultiSelectiveChipUiState> get chips =>
      throw _privateConstructorUsedError;

  /// Create a copy of MultiSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiSelectiveChipsUiStateCopyWith<MultiSelectiveChipsUiState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiSelectiveChipsUiStateCopyWith<$Res> {
  factory $MultiSelectiveChipsUiStateCopyWith(MultiSelectiveChipsUiState value,
          $Res Function(MultiSelectiveChipsUiState) then) =
      _$MultiSelectiveChipsUiStateCopyWithImpl<$Res,
          MultiSelectiveChipsUiState>;
  @useResult
  $Res call({Iterable<MultiSelectiveChipUiState> chips});
}

/// @nodoc
class _$MultiSelectiveChipsUiStateCopyWithImpl<$Res,
        $Val extends MultiSelectiveChipsUiState>
    implements $MultiSelectiveChipsUiStateCopyWith<$Res> {
  _$MultiSelectiveChipsUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chips = null,
  }) {
    return _then(_value.copyWith(
      chips: null == chips
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as Iterable<MultiSelectiveChipUiState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiSelectiveChipsUiStateImplCopyWith<$Res>
    implements $MultiSelectiveChipsUiStateCopyWith<$Res> {
  factory _$$MultiSelectiveChipsUiStateImplCopyWith(
          _$MultiSelectiveChipsUiStateImpl value,
          $Res Function(_$MultiSelectiveChipsUiStateImpl) then) =
      __$$MultiSelectiveChipsUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Iterable<MultiSelectiveChipUiState> chips});
}

/// @nodoc
class __$$MultiSelectiveChipsUiStateImplCopyWithImpl<$Res>
    extends _$MultiSelectiveChipsUiStateCopyWithImpl<$Res,
        _$MultiSelectiveChipsUiStateImpl>
    implements _$$MultiSelectiveChipsUiStateImplCopyWith<$Res> {
  __$$MultiSelectiveChipsUiStateImplCopyWithImpl(
      _$MultiSelectiveChipsUiStateImpl _value,
      $Res Function(_$MultiSelectiveChipsUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chips = null,
  }) {
    return _then(_$MultiSelectiveChipsUiStateImpl(
      chips: null == chips
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as Iterable<MultiSelectiveChipUiState>,
    ));
  }
}

/// @nodoc

class _$MultiSelectiveChipsUiStateImpl implements _MultiSelectiveChipsUiState {
  const _$MultiSelectiveChipsUiStateImpl({required this.chips});

  @override
  final Iterable<MultiSelectiveChipUiState> chips;

  @override
  String toString() {
    return 'MultiSelectiveChipsUiState(chips: $chips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiSelectiveChipsUiStateImpl &&
            const DeepCollectionEquality().equals(other.chips, chips));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chips));

  /// Create a copy of MultiSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiSelectiveChipsUiStateImplCopyWith<_$MultiSelectiveChipsUiStateImpl>
      get copyWith => __$$MultiSelectiveChipsUiStateImplCopyWithImpl<
          _$MultiSelectiveChipsUiStateImpl>(this, _$identity);
}

abstract class _MultiSelectiveChipsUiState
    implements MultiSelectiveChipsUiState {
  const factory _MultiSelectiveChipsUiState(
          {required final Iterable<MultiSelectiveChipUiState> chips}) =
      _$MultiSelectiveChipsUiStateImpl;

  @override
  Iterable<MultiSelectiveChipUiState> get chips;

  /// Create a copy of MultiSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiSelectiveChipsUiStateImplCopyWith<_$MultiSelectiveChipsUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
