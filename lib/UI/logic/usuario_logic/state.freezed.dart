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
class _$UsuarioStateTearOff {
  const _$UsuarioStateTearOff();

  _UsuarioStateInitial initial() {
    return const _UsuarioStateInitial();
  }

  _UsuarioStateLoading loading() {
    return const _UsuarioStateLoading();
  }

  _UsuarioStateData data({required dynamic result}) {
    return _UsuarioStateData(
      result: result,
    );
  }

  _UsuarioStateError error([String? error]) {
    return _UsuarioStateError(
      error,
    );
  }
}

/// @nodoc
const $UsuarioState = _$UsuarioStateTearOff();

/// @nodoc
mixin _$UsuarioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsuarioStateInitial value) initial,
    required TResult Function(_UsuarioStateLoading value) loading,
    required TResult Function(_UsuarioStateData value) data,
    required TResult Function(_UsuarioStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioStateCopyWith<$Res> {
  factory $UsuarioStateCopyWith(
          UsuarioState value, $Res Function(UsuarioState) then) =
      _$UsuarioStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsuarioStateCopyWithImpl<$Res> implements $UsuarioStateCopyWith<$Res> {
  _$UsuarioStateCopyWithImpl(this._value, this._then);

  final UsuarioState _value;
  // ignore: unused_field
  final $Res Function(UsuarioState) _then;
}

/// @nodoc
abstract class _$UsuarioStateInitialCopyWith<$Res> {
  factory _$UsuarioStateInitialCopyWith(_UsuarioStateInitial value,
          $Res Function(_UsuarioStateInitial) then) =
      __$UsuarioStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsuarioStateInitialCopyWithImpl<$Res>
    extends _$UsuarioStateCopyWithImpl<$Res>
    implements _$UsuarioStateInitialCopyWith<$Res> {
  __$UsuarioStateInitialCopyWithImpl(
      _UsuarioStateInitial _value, $Res Function(_UsuarioStateInitial) _then)
      : super(_value, (v) => _then(v as _UsuarioStateInitial));

  @override
  _UsuarioStateInitial get _value => super._value as _UsuarioStateInitial;
}

/// @nodoc

class _$_UsuarioStateInitial implements _UsuarioStateInitial {
  const _$_UsuarioStateInitial();

  @override
  String toString() {
    return 'UsuarioState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UsuarioStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
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
    required TResult Function(_UsuarioStateInitial value) initial,
    required TResult Function(_UsuarioStateLoading value) loading,
    required TResult Function(_UsuarioStateData value) data,
    required TResult Function(_UsuarioStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UsuarioStateInitial implements UsuarioState {
  const factory _UsuarioStateInitial() = _$_UsuarioStateInitial;
}

/// @nodoc
abstract class _$UsuarioStateLoadingCopyWith<$Res> {
  factory _$UsuarioStateLoadingCopyWith(_UsuarioStateLoading value,
          $Res Function(_UsuarioStateLoading) then) =
      __$UsuarioStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsuarioStateLoadingCopyWithImpl<$Res>
    extends _$UsuarioStateCopyWithImpl<$Res>
    implements _$UsuarioStateLoadingCopyWith<$Res> {
  __$UsuarioStateLoadingCopyWithImpl(
      _UsuarioStateLoading _value, $Res Function(_UsuarioStateLoading) _then)
      : super(_value, (v) => _then(v as _UsuarioStateLoading));

  @override
  _UsuarioStateLoading get _value => super._value as _UsuarioStateLoading;
}

/// @nodoc

class _$_UsuarioStateLoading implements _UsuarioStateLoading {
  const _$_UsuarioStateLoading();

  @override
  String toString() {
    return 'UsuarioState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UsuarioStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
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
    required TResult Function(_UsuarioStateInitial value) initial,
    required TResult Function(_UsuarioStateLoading value) loading,
    required TResult Function(_UsuarioStateData value) data,
    required TResult Function(_UsuarioStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UsuarioStateLoading implements UsuarioState {
  const factory _UsuarioStateLoading() = _$_UsuarioStateLoading;
}

/// @nodoc
abstract class _$UsuarioStateDataCopyWith<$Res> {
  factory _$UsuarioStateDataCopyWith(
          _UsuarioStateData value, $Res Function(_UsuarioStateData) then) =
      __$UsuarioStateDataCopyWithImpl<$Res>;
  $Res call({dynamic result});
}

/// @nodoc
class __$UsuarioStateDataCopyWithImpl<$Res>
    extends _$UsuarioStateCopyWithImpl<$Res>
    implements _$UsuarioStateDataCopyWith<$Res> {
  __$UsuarioStateDataCopyWithImpl(
      _UsuarioStateData _value, $Res Function(_UsuarioStateData) _then)
      : super(_value, (v) => _then(v as _UsuarioStateData));

  @override
  _UsuarioStateData get _value => super._value as _UsuarioStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_UsuarioStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UsuarioStateData implements _UsuarioStateData {
  const _$_UsuarioStateData({required this.result});

  @override
  final dynamic result;

  @override
  String toString() {
    return 'UsuarioState.data(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsuarioStateData &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$UsuarioStateDataCopyWith<_UsuarioStateData> get copyWith =>
      __$UsuarioStateDataCopyWithImpl<_UsuarioStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) data,
    required TResult Function(String? error) error,
  }) {
    return data(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
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
    required TResult Function(_UsuarioStateInitial value) initial,
    required TResult Function(_UsuarioStateLoading value) loading,
    required TResult Function(_UsuarioStateData value) data,
    required TResult Function(_UsuarioStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _UsuarioStateData implements UsuarioState {
  const factory _UsuarioStateData({required dynamic result}) =
      _$_UsuarioStateData;

  dynamic get result;
  @JsonKey(ignore: true)
  _$UsuarioStateDataCopyWith<_UsuarioStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsuarioStateErrorCopyWith<$Res> {
  factory _$UsuarioStateErrorCopyWith(
          _UsuarioStateError value, $Res Function(_UsuarioStateError) then) =
      __$UsuarioStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$UsuarioStateErrorCopyWithImpl<$Res>
    extends _$UsuarioStateCopyWithImpl<$Res>
    implements _$UsuarioStateErrorCopyWith<$Res> {
  __$UsuarioStateErrorCopyWithImpl(
      _UsuarioStateError _value, $Res Function(_UsuarioStateError) _then)
      : super(_value, (v) => _then(v as _UsuarioStateError));

  @override
  _UsuarioStateError get _value => super._value as _UsuarioStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_UsuarioStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UsuarioStateError implements _UsuarioStateError {
  const _$_UsuarioStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'UsuarioState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsuarioStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$UsuarioStateErrorCopyWith<_UsuarioStateError> get copyWith =>
      __$UsuarioStateErrorCopyWithImpl<_UsuarioStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? data,
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
    required TResult Function(_UsuarioStateInitial value) initial,
    required TResult Function(_UsuarioStateLoading value) loading,
    required TResult Function(_UsuarioStateData value) data,
    required TResult Function(_UsuarioStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsuarioStateInitial value)? initial,
    TResult Function(_UsuarioStateLoading value)? loading,
    TResult Function(_UsuarioStateData value)? data,
    TResult Function(_UsuarioStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UsuarioStateError implements UsuarioState {
  const factory _UsuarioStateError([String? error]) = _$_UsuarioStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$UsuarioStateErrorCopyWith<_UsuarioStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
