// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drop_down_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropDownUiState {
  String get label => throw _privateConstructorUsedError;
  String? get placeHolder => throw _privateConstructorUsedError;
  String? get selectedText => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;

  /// Create a copy of DropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropDownUiStateCopyWith<DropDownUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropDownUiStateCopyWith<$Res> {
  factory $DropDownUiStateCopyWith(
          DropDownUiState value, $Res Function(DropDownUiState) then) =
      _$DropDownUiStateCopyWithImpl<$Res, DropDownUiState>;
  @useResult
  $Res call(
      {String label, String? placeHolder, String? selectedText, bool enabled});
}

/// @nodoc
class _$DropDownUiStateCopyWithImpl<$Res, $Val extends DropDownUiState>
    implements $DropDownUiStateCopyWith<$Res> {
  _$DropDownUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeHolder = freezed,
    Object? selectedText = freezed,
    Object? enabled = null,
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
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropDownUiStateImplCopyWith<$Res>
    implements $DropDownUiStateCopyWith<$Res> {
  factory _$$DropDownUiStateImplCopyWith(_$DropDownUiStateImpl value,
          $Res Function(_$DropDownUiStateImpl) then) =
      __$$DropDownUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label, String? placeHolder, String? selectedText, bool enabled});
}

/// @nodoc
class __$$DropDownUiStateImplCopyWithImpl<$Res>
    extends _$DropDownUiStateCopyWithImpl<$Res, _$DropDownUiStateImpl>
    implements _$$DropDownUiStateImplCopyWith<$Res> {
  __$$DropDownUiStateImplCopyWithImpl(
      _$DropDownUiStateImpl _value, $Res Function(_$DropDownUiStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeHolder = freezed,
    Object? selectedText = freezed,
    Object? enabled = null,
  }) {
    return _then(_$DropDownUiStateImpl(
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
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DropDownUiStateImpl implements _DropDownUiState {
  const _$DropDownUiStateImpl(
      {required this.label,
      this.placeHolder = null,
      this.selectedText = null,
      this.enabled = true});

  @override
  final String label;
  @override
  @JsonKey()
  final String? placeHolder;
  @override
  @JsonKey()
  final String? selectedText;
  @override
  @JsonKey()
  final bool enabled;

  @override
  String toString() {
    return 'DropDownUiState(label: $label, placeHolder: $placeHolder, selectedText: $selectedText, enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropDownUiStateImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeHolder, placeHolder) ||
                other.placeHolder == placeHolder) &&
            (identical(other.selectedText, selectedText) ||
                other.selectedText == selectedText) &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, label, placeHolder, selectedText, enabled);

  /// Create a copy of DropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropDownUiStateImplCopyWith<_$DropDownUiStateImpl> get copyWith =>
      __$$DropDownUiStateImplCopyWithImpl<_$DropDownUiStateImpl>(
          this, _$identity);
}

abstract class _DropDownUiState implements DropDownUiState {
  const factory _DropDownUiState(
      {required final String label,
      final String? placeHolder,
      final String? selectedText,
      final bool enabled}) = _$DropDownUiStateImpl;

  @override
  String get label;
  @override
  String? get placeHolder;
  @override
  String? get selectedText;
  @override
  bool get enabled;

  /// Create a copy of DropDownUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropDownUiStateImplCopyWith<_$DropDownUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
