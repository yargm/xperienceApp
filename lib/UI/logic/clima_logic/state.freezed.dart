// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClimaStateTearOff {
  const _$ClimaStateTearOff();

  _ClimaStateInitial initial() {
    return const _ClimaStateInitial();
  }

  _ClimaStateLoading loading() {
    return const _ClimaStateLoading();
  }

  _ClimaStateData data({required Clima result}) {
    return _ClimaStateData(
      result: result,
    );
  }

  _ClimaStateError error([String? error]) {
    return _ClimaStateError(
      error,
    );
  }
}

/// @nodoc
const $ClimaState = _$ClimaStateTearOff();

/// @nodoc
mixin _$ClimaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Clima result) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClimaStateInitial value) initial,
    required TResult Function(_ClimaStateLoading value) loading,
    required TResult Function(_ClimaStateData value) data,
    required TResult Function(_ClimaStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClimaStateCopyWith<$Res> {
  factory $ClimaStateCopyWith(
          ClimaState value, $Res Function(ClimaState) then) =
      _$ClimaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClimaStateCopyWithImpl<$Res> implements $ClimaStateCopyWith<$Res> {
  _$ClimaStateCopyWithImpl(this._value, this._then);

  final ClimaState _value;
  // ignore: unused_field
  final $Res Function(ClimaState) _then;
}

/// @nodoc
abstract class _$ClimaStateInitialCopyWith<$Res> {
  factory _$ClimaStateInitialCopyWith(
          _ClimaStateInitial value, $Res Function(_ClimaStateInitial) then) =
      __$ClimaStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClimaStateInitialCopyWithImpl<$Res>
    extends _$ClimaStateCopyWithImpl<$Res>
    implements _$ClimaStateInitialCopyWith<$Res> {
  __$ClimaStateInitialCopyWithImpl(
      _ClimaStateInitial _value, $Res Function(_ClimaStateInitial) _then)
      : super(_value, (v) => _then(v as _ClimaStateInitial));

  @override
  _ClimaStateInitial get _value => super._value as _ClimaStateInitial;
}

/// @nodoc

class _$_ClimaStateInitial implements _ClimaStateInitial {
  const _$_ClimaStateInitial();

  @override
  String toString() {
    return 'ClimaState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClimaStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Clima result) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClimaStateInitial value) initial,
    required TResult Function(_ClimaStateLoading value) loading,
    required TResult Function(_ClimaStateData value) data,
    required TResult Function(_ClimaStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ClimaStateInitial implements ClimaState {
  const factory _ClimaStateInitial() = _$_ClimaStateInitial;
}

/// @nodoc
abstract class _$ClimaStateLoadingCopyWith<$Res> {
  factory _$ClimaStateLoadingCopyWith(
          _ClimaStateLoading value, $Res Function(_ClimaStateLoading) then) =
      __$ClimaStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClimaStateLoadingCopyWithImpl<$Res>
    extends _$ClimaStateCopyWithImpl<$Res>
    implements _$ClimaStateLoadingCopyWith<$Res> {
  __$ClimaStateLoadingCopyWithImpl(
      _ClimaStateLoading _value, $Res Function(_ClimaStateLoading) _then)
      : super(_value, (v) => _then(v as _ClimaStateLoading));

  @override
  _ClimaStateLoading get _value => super._value as _ClimaStateLoading;
}

/// @nodoc

class _$_ClimaStateLoading implements _ClimaStateLoading {
  const _$_ClimaStateLoading();

  @override
  String toString() {
    return 'ClimaState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClimaStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Clima result) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClimaStateInitial value) initial,
    required TResult Function(_ClimaStateLoading value) loading,
    required TResult Function(_ClimaStateData value) data,
    required TResult Function(_ClimaStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ClimaStateLoading implements ClimaState {
  const factory _ClimaStateLoading() = _$_ClimaStateLoading;
}

/// @nodoc
abstract class _$ClimaStateDataCopyWith<$Res> {
  factory _$ClimaStateDataCopyWith(
          _ClimaStateData value, $Res Function(_ClimaStateData) then) =
      __$ClimaStateDataCopyWithImpl<$Res>;
  $Res call({Clima result});
}

/// @nodoc
class __$ClimaStateDataCopyWithImpl<$Res> extends _$ClimaStateCopyWithImpl<$Res>
    implements _$ClimaStateDataCopyWith<$Res> {
  __$ClimaStateDataCopyWithImpl(
      _ClimaStateData _value, $Res Function(_ClimaStateData) _then)
      : super(_value, (v) => _then(v as _ClimaStateData));

  @override
  _ClimaStateData get _value => super._value as _ClimaStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_ClimaStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Clima,
    ));
  }
}

/// @nodoc

class _$_ClimaStateData implements _ClimaStateData {
  const _$_ClimaStateData({required this.result});

  @override
  final Clima result;

  @override
  String toString() {
    return 'ClimaState.data(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClimaStateData &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$ClimaStateDataCopyWith<_ClimaStateData> get copyWith =>
      __$ClimaStateDataCopyWithImpl<_ClimaStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Clima result) data,
    required TResult Function(String? error) error,
  }) {
    return data(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClimaStateInitial value) initial,
    required TResult Function(_ClimaStateLoading value) loading,
    required TResult Function(_ClimaStateData value) data,
    required TResult Function(_ClimaStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ClimaStateData implements ClimaState {
  const factory _ClimaStateData({required Clima result}) = _$_ClimaStateData;

  Clima get result;
  @JsonKey(ignore: true)
  _$ClimaStateDataCopyWith<_ClimaStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClimaStateErrorCopyWith<$Res> {
  factory _$ClimaStateErrorCopyWith(
          _ClimaStateError value, $Res Function(_ClimaStateError) then) =
      __$ClimaStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ClimaStateErrorCopyWithImpl<$Res>
    extends _$ClimaStateCopyWithImpl<$Res>
    implements _$ClimaStateErrorCopyWith<$Res> {
  __$ClimaStateErrorCopyWithImpl(
      _ClimaStateError _value, $Res Function(_ClimaStateError) _then)
      : super(_value, (v) => _then(v as _ClimaStateError));

  @override
  _ClimaStateError get _value => super._value as _ClimaStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ClimaStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ClimaStateError implements _ClimaStateError {
  const _$_ClimaStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'ClimaState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClimaStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ClimaStateErrorCopyWith<_ClimaStateError> get copyWith =>
      __$ClimaStateErrorCopyWithImpl<_ClimaStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Clima result) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Clima result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClimaStateInitial value) initial,
    required TResult Function(_ClimaStateLoading value) loading,
    required TResult Function(_ClimaStateData value) data,
    required TResult Function(_ClimaStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClimaStateInitial value)? initial,
    TResult Function(_ClimaStateLoading value)? loading,
    TResult Function(_ClimaStateData value)? data,
    TResult Function(_ClimaStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ClimaStateError implements ClimaState {
  const factory _ClimaStateError([String? error]) = _$_ClimaStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$ClimaStateErrorCopyWith<_ClimaStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
