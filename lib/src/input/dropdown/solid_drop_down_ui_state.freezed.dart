// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solid_drop_down_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SolidDropDownUiState {
  String get label => throw _privateConstructorUsedError;
  String? get placeHolder => throw _privateConstructorUsedError;
  String? get selectedText => throw _privateConstructorUsedError;

  /// Create a copy of SolidDropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SolidDropDownUiStateCopyWith<SolidDropDownUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolidDropDownUiStateCopyWith<$Res> {
  factory $SolidDropDownUiStateCopyWith(SolidDropDownUiState value,
          $Res Function(SolidDropDownUiState) then) =
      _$SolidDropDownUiStateCopyWithImpl<$Res, SolidDropDownUiState>;
  @useResult
  $Res call({String label, String? placeHolder, String? selectedText});
}

/// @nodoc
class _$SolidDropDownUiStateCopyWithImpl<$Res,
        $Val extends SolidDropDownUiState>
    implements $SolidDropDownUiStateCopyWith<$Res> {
  _$SolidDropDownUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SolidDropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeHolder = freezed,
    Object? selectedText = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeHolder: freezed == placeHolder
          ? _value.placeHolder
          : placeHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedText: freezed == selectedText
          ? _value.selectedText
          : selectedText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolidDropDownUiStateImplCopyWith<$Res>
    implements $SolidDropDownUiStateCopyWith<$Res> {
  factory _$$SolidDropDownUiStateImplCopyWith(_$SolidDropDownUiStateImpl value,
          $Res Function(_$SolidDropDownUiStateImpl) then) =
      __$$SolidDropDownUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? placeHolder, String? selectedText});
}

/// @nodoc
class __$$SolidDropDownUiStateImplCopyWithImpl<$Res>
    extends _$SolidDropDownUiStateCopyWithImpl<$Res, _$SolidDropDownUiStateImpl>
    implements _$$SolidDropDownUiStateImplCopyWith<$Res> {
  __$$SolidDropDownUiStateImplCopyWithImpl(_$SolidDropDownUiStateImpl _value,
      $Res Function(_$SolidDropDownUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SolidDropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeHolder = freezed,
    Object? selectedText = freezed,
  }) {
    return _then(_$SolidDropDownUiStateImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeHolder: freezed == placeHolder
          ? _value.placeHolder
          : placeHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedText: freezed == selectedText
          ? _value.selectedText
          : selectedText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SolidDropDownUiStateImpl implements _SolidDropDownUiState {
  const _$SolidDropDownUiStateImpl(
      {required this.label, this.placeHolder = null, this.selectedText = null});

  @override
  final String label;
  @override
  @JsonKey()
  final String? placeHolder;
  @override
  @JsonKey()
  final String? selectedText;

  @override
  String toString() {
    return 'SolidDropDownUiState(label: $label, placeHolder: $placeHolder, selectedText: $selectedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolidDropDownUiStateImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeHolder, placeHolder) ||
                other.placeHolder == placeHolder) &&
            (identical(other.selectedText, selectedText) ||
                other.selectedText == selectedText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, placeHolder, selectedText);

  /// Create a copy of SolidDropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolidDropDownUiStateImplCopyWith<_$SolidDropDownUiStateImpl>
      get copyWith =>
          __$$SolidDropDownUiStateImplCopyWithImpl<_$SolidDropDownUiStateImpl>(
              this, _$identity);
}

abstract class _SolidDropDownUiState implements SolidDropDownUiState {
  const factory _SolidDropDownUiState(
      {required final String label,
      final String? placeHolder,
      final String? selectedText}) = _$SolidDropDownUiStateImpl;

  @override
  String get label;
  @override
  String? get placeHolder;
  @override
  String? get selectedText;

  /// Create a copy of SolidDropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolidDropDownUiStateImplCopyWith<_$SolidDropDownUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
