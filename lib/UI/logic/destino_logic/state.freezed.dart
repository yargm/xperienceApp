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
class _$DestinoStateTearOff {
  const _$DestinoStateTearOff();

  _DestinoStateInitial initial() {
    return const _DestinoStateInitial();
  }

  _DestinoStateLoading loading() {
    return const _DestinoStateLoading();
  }

  _DestinoStateData data({required List<Destino> result}) {
    return _DestinoStateData(
      result: result,
    );
  }

  _DestinoStateError error([String? error]) {
    return _DestinoStateError(
      error,
    );
  }
}

/// @nodoc
const $DestinoState = _$DestinoStateTearOff();

/// @nodoc
mixin _$DestinoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destino> result) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DestinoStateInitial value) initial,
    required TResult Function(_DestinoStateLoading value) loading,
    required TResult Function(_DestinoStateData value) data,
    required TResult Function(_DestinoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinoStateCopyWith<$Res> {
  factory $DestinoStateCopyWith(
          DestinoState value, $Res Function(DestinoState) then) =
      _$DestinoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DestinoStateCopyWithImpl<$Res> implements $DestinoStateCopyWith<$Res> {
  _$DestinoStateCopyWithImpl(this._value, this._then);

  final DestinoState _value;
  // ignore: unused_field
  final $Res Function(DestinoState) _then;
}

/// @nodoc
abstract class _$DestinoStateInitialCopyWith<$Res> {
  factory _$DestinoStateInitialCopyWith(_DestinoStateInitial value,
          $Res Function(_DestinoStateInitial) then) =
      __$DestinoStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$DestinoStateInitialCopyWithImpl<$Res>
    extends _$DestinoStateCopyWithImpl<$Res>
    implements _$DestinoStateInitialCopyWith<$Res> {
  __$DestinoStateInitialCopyWithImpl(
      _DestinoStateInitial _value, $Res Function(_DestinoStateInitial) _then)
      : super(_value, (v) => _then(v as _DestinoStateInitial));

  @override
  _DestinoStateInitial get _value => super._value as _DestinoStateInitial;
}

/// @nodoc

class _$_DestinoStateInitial implements _DestinoStateInitial {
  const _$_DestinoStateInitial();

  @override
  String toString() {
    return 'DestinoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DestinoStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destino> result) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
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
    required TResult Function(_DestinoStateInitial value) initial,
    required TResult Function(_DestinoStateLoading value) loading,
    required TResult Function(_DestinoStateData value) data,
    required TResult Function(_DestinoStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DestinoStateInitial implements DestinoState {
  const factory _DestinoStateInitial() = _$_DestinoStateInitial;
}

/// @nodoc
abstract class _$DestinoStateLoadingCopyWith<$Res> {
  factory _$DestinoStateLoadingCopyWith(_DestinoStateLoading value,
          $Res Function(_DestinoStateLoading) then) =
      __$DestinoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$DestinoStateLoadingCopyWithImpl<$Res>
    extends _$DestinoStateCopyWithImpl<$Res>
    implements _$DestinoStateLoadingCopyWith<$Res> {
  __$DestinoStateLoadingCopyWithImpl(
      _DestinoStateLoading _value, $Res Function(_DestinoStateLoading) _then)
      : super(_value, (v) => _then(v as _DestinoStateLoading));

  @override
  _DestinoStateLoading get _value => super._value as _DestinoStateLoading;
}

/// @nodoc

class _$_DestinoStateLoading implements _DestinoStateLoading {
  const _$_DestinoStateLoading();

  @override
  String toString() {
    return 'DestinoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DestinoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destino> result) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
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
    required TResult Function(_DestinoStateInitial value) initial,
    required TResult Function(_DestinoStateLoading value) loading,
    required TResult Function(_DestinoStateData value) data,
    required TResult Function(_DestinoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DestinoStateLoading implements DestinoState {
  const factory _DestinoStateLoading() = _$_DestinoStateLoading;
}

/// @nodoc
abstract class _$DestinoStateDataCopyWith<$Res> {
  factory _$DestinoStateDataCopyWith(
          _DestinoStateData value, $Res Function(_DestinoStateData) then) =
      __$DestinoStateDataCopyWithImpl<$Res>;
  $Res call({List<Destino> result});
}

/// @nodoc
class __$DestinoStateDataCopyWithImpl<$Res>
    extends _$DestinoStateCopyWithImpl<$Res>
    implements _$DestinoStateDataCopyWith<$Res> {
  __$DestinoStateDataCopyWithImpl(
      _DestinoStateData _value, $Res Function(_DestinoStateData) _then)
      : super(_value, (v) => _then(v as _DestinoStateData));

  @override
  _DestinoStateData get _value => super._value as _DestinoStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_DestinoStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Destino>,
    ));
  }
}

/// @nodoc

class _$_DestinoStateData implements _DestinoStateData {
  const _$_DestinoStateData({required this.result});

  @override
  final List<Destino> result;

  @override
  String toString() {
    return 'DestinoState.data(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DestinoStateData &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$DestinoStateDataCopyWith<_DestinoStateData> get copyWith =>
      __$DestinoStateDataCopyWithImpl<_DestinoStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destino> result) data,
    required TResult Function(String? error) error,
  }) {
    return data(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
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
    required TResult Function(_DestinoStateInitial value) initial,
    required TResult Function(_DestinoStateLoading value) loading,
    required TResult Function(_DestinoStateData value) data,
    required TResult Function(_DestinoStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DestinoStateData implements DestinoState {
  const factory _DestinoStateData({required List<Destino> result}) =
      _$_DestinoStateData;

  List<Destino> get result;
  @JsonKey(ignore: true)
  _$DestinoStateDataCopyWith<_DestinoStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DestinoStateErrorCopyWith<$Res> {
  factory _$DestinoStateErrorCopyWith(
          _DestinoStateError value, $Res Function(_DestinoStateError) then) =
      __$DestinoStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$DestinoStateErrorCopyWithImpl<$Res>
    extends _$DestinoStateCopyWithImpl<$Res>
    implements _$DestinoStateErrorCopyWith<$Res> {
  __$DestinoStateErrorCopyWithImpl(
      _DestinoStateError _value, $Res Function(_DestinoStateError) _then)
      : super(_value, (v) => _then(v as _DestinoStateError));

  @override
  _DestinoStateError get _value => super._value as _DestinoStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DestinoStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DestinoStateError implements _DestinoStateError {
  const _$_DestinoStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'DestinoState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DestinoStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DestinoStateErrorCopyWith<_DestinoStateError> get copyWith =>
      __$DestinoStateErrorCopyWithImpl<_DestinoStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Destino> result) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Destino> result)? data,
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
    required TResult Function(_DestinoStateInitial value) initial,
    required TResult Function(_DestinoStateLoading value) loading,
    required TResult Function(_DestinoStateData value) data,
    required TResult Function(_DestinoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DestinoStateInitial value)? initial,
    TResult Function(_DestinoStateLoading value)? loading,
    TResult Function(_DestinoStateData value)? data,
    TResult Function(_DestinoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DestinoStateError implements DestinoState {
  const factory _DestinoStateError([String? error]) = _$_DestinoStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$DestinoStateErrorCopyWith<_DestinoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
