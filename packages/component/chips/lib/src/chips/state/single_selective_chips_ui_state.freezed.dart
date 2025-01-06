// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_selective_chips_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleSelectiveChipsUiState {
  Iterable<SingleSelectiveChipUiState> get chips =>
      throw _privateConstructorUsedError;
  SingleSelectiveChipSizeType get sizeType =>
      throw _privateConstructorUsedError;

  /// Create a copy of SingleSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleSelectiveChipsUiStateCopyWith<SingleSelectiveChipsUiState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleSelectiveChipsUiStateCopyWith<$Res> {
  factory $SingleSelectiveChipsUiStateCopyWith(
          SingleSelectiveChipsUiState value,
          $Res Function(SingleSelectiveChipsUiState) then) =
      _$SingleSelectiveChipsUiStateCopyWithImpl<$Res,
          SingleSelectiveChipsUiState>;
  @useResult
  $Res call(
      {Iterable<SingleSelectiveChipUiState> chips,
      SingleSelectiveChipSizeType sizeType});
}

/// @nodoc
class _$SingleSelectiveChipsUiStateCopyWithImpl<$Res,
        $Val extends SingleSelectiveChipsUiState>
    implements $SingleSelectiveChipsUiStateCopyWith<$Res> {
  _$SingleSelectiveChipsUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingleSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chips = null,
    Object? sizeType = null,
  }) {
    return _then(_value.copyWith(
      chips: null == chips
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as Iterable<SingleSelectiveChipUiState>,
      sizeType: null == sizeType
          ? _value.sizeType
          : sizeType // ignore: cast_nullable_to_non_nullable
              as SingleSelectiveChipSizeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleSelectiveChipsUiStateImplCopyWith<$Res>
    implements $SingleSelectiveChipsUiStateCopyWith<$Res> {
  factory _$$SingleSelectiveChipsUiStateImplCopyWith(
          _$SingleSelectiveChipsUiStateImpl value,
          $Res Function(_$SingleSelectiveChipsUiStateImpl) then) =
      __$$SingleSelectiveChipsUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<SingleSelectiveChipUiState> chips,
      SingleSelectiveChipSizeType sizeType});
}

/// @nodoc
class __$$SingleSelectiveChipsUiStateImplCopyWithImpl<$Res>
    extends _$SingleSelectiveChipsUiStateCopyWithImpl<$Res,
        _$SingleSelectiveChipsUiStateImpl>
    implements _$$SingleSelectiveChipsUiStateImplCopyWith<$Res> {
  __$$SingleSelectiveChipsUiStateImplCopyWithImpl(
      _$SingleSelectiveChipsUiStateImpl _value,
      $Res Function(_$SingleSelectiveChipsUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingleSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chips = null,
    Object? sizeType = null,
  }) {
    return _then(_$SingleSelectiveChipsUiStateImpl(
      chips: null == chips
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as Iterable<SingleSelectiveChipUiState>,
      sizeType: null == sizeType
          ? _value.sizeType
          : sizeType // ignore: cast_nullable_to_non_nullable
              as SingleSelectiveChipSizeType,
    ));
  }
}

/// @nodoc

class _$SingleSelectiveChipsUiStateImpl
    implements _SingleSelectiveChipsUiState {
  const _$SingleSelectiveChipsUiStateImpl(
      {required this.chips,
      this.sizeType = SingleSelectiveChipSizeType.regular});

  @override
  final Iterable<SingleSelectiveChipUiState> chips;
  @override
  @JsonKey()
  final SingleSelectiveChipSizeType sizeType;

  @override
  String toString() {
    return 'SingleSelectiveChipsUiState(chips: $chips, sizeType: $sizeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleSelectiveChipsUiStateImpl &&
            const DeepCollectionEquality().equals(other.chips, chips) &&
            (identical(other.sizeType, sizeType) ||
                other.sizeType == sizeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(chips), sizeType);

  /// Create a copy of SingleSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleSelectiveChipsUiStateImplCopyWith<_$SingleSelectiveChipsUiStateImpl>
      get copyWith => __$$SingleSelectiveChipsUiStateImplCopyWithImpl<
          _$SingleSelectiveChipsUiStateImpl>(this, _$identity);
}

abstract class _SingleSelectiveChipsUiState
    implements SingleSelectiveChipsUiState {
  const factory _SingleSelectiveChipsUiState(
          {required final Iterable<SingleSelectiveChipUiState> chips,
          final SingleSelectiveChipSizeType sizeType}) =
      _$SingleSelectiveChipsUiStateImpl;

  @override
  Iterable<SingleSelectiveChipUiState> get chips;
  @override
  SingleSelectiveChipSizeType get sizeType;

  /// Create a copy of SingleSelectiveChipsUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleSelectiveChipsUiStateImplCopyWith<_$SingleSelectiveChipsUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
