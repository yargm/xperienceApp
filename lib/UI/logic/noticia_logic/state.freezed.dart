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
class _$NoticiaStateTearOff {
  const _$NoticiaStateTearOff();

  _NoticiaStateInitial initial() {
    return const _NoticiaStateInitial();
  }

  _NoticiaStateLoading loading() {
    return const _NoticiaStateLoading();
  }

  _NoticiaStateData data({required List<Noticia> result}) {
    return _NoticiaStateData(
      result: result,
    );
  }

  _NoticiaStateError error([String? error]) {
    return _NoticiaStateError(
      error,
    );
  }
}

/// @nodoc
const $NoticiaState = _$NoticiaStateTearOff();

/// @nodoc
mixin _$NoticiaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Noticia> result) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoticiaStateInitial value) initial,
    required TResult Function(_NoticiaStateLoading value) loading,
    required TResult Function(_NoticiaStateData value) data,
    required TResult Function(_NoticiaStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticiaStateCopyWith<$Res> {
  factory $NoticiaStateCopyWith(
          NoticiaState value, $Res Function(NoticiaState) then) =
      _$NoticiaStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoticiaStateCopyWithImpl<$Res> implements $NoticiaStateCopyWith<$Res> {
  _$NoticiaStateCopyWithImpl(this._value, this._then);

  final NoticiaState _value;
  // ignore: unused_field
  final $Res Function(NoticiaState) _then;
}

/// @nodoc
abstract class _$NoticiaStateInitialCopyWith<$Res> {
  factory _$NoticiaStateInitialCopyWith(_NoticiaStateInitial value,
          $Res Function(_NoticiaStateInitial) then) =
      __$NoticiaStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoticiaStateInitialCopyWithImpl<$Res>
    extends _$NoticiaStateCopyWithImpl<$Res>
    implements _$NoticiaStateInitialCopyWith<$Res> {
  __$NoticiaStateInitialCopyWithImpl(
      _NoticiaStateInitial _value, $Res Function(_NoticiaStateInitial) _then)
      : super(_value, (v) => _then(v as _NoticiaStateInitial));

  @override
  _NoticiaStateInitial get _value => super._value as _NoticiaStateInitial;
}

/// @nodoc

class _$_NoticiaStateInitial implements _NoticiaStateInitial {
  const _$_NoticiaStateInitial();

  @override
  String toString() {
    return 'NoticiaState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoticiaStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Noticia> result) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
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
    required TResult Function(_NoticiaStateInitial value) initial,
    required TResult Function(_NoticiaStateLoading value) loading,
    required TResult Function(_NoticiaStateData value) data,
    required TResult Function(_NoticiaStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _NoticiaStateInitial implements NoticiaState {
  const factory _NoticiaStateInitial() = _$_NoticiaStateInitial;
}

/// @nodoc
abstract class _$NoticiaStateLoadingCopyWith<$Res> {
  factory _$NoticiaStateLoadingCopyWith(_NoticiaStateLoading value,
          $Res Function(_NoticiaStateLoading) then) =
      __$NoticiaStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoticiaStateLoadingCopyWithImpl<$Res>
    extends _$NoticiaStateCopyWithImpl<$Res>
    implements _$NoticiaStateLoadingCopyWith<$Res> {
  __$NoticiaStateLoadingCopyWithImpl(
      _NoticiaStateLoading _value, $Res Function(_NoticiaStateLoading) _then)
      : super(_value, (v) => _then(v as _NoticiaStateLoading));

  @override
  _NoticiaStateLoading get _value => super._value as _NoticiaStateLoading;
}

/// @nodoc

class _$_NoticiaStateLoading implements _NoticiaStateLoading {
  const _$_NoticiaStateLoading();

  @override
  String toString() {
    return 'NoticiaState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoticiaStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Noticia> result) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
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
    required TResult Function(_NoticiaStateInitial value) initial,
    required TResult Function(_NoticiaStateLoading value) loading,
    required TResult Function(_NoticiaStateData value) data,
    required TResult Function(_NoticiaStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NoticiaStateLoading implements NoticiaState {
  const factory _NoticiaStateLoading() = _$_NoticiaStateLoading;
}

/// @nodoc
abstract class _$NoticiaStateDataCopyWith<$Res> {
  factory _$NoticiaStateDataCopyWith(
          _NoticiaStateData value, $Res Function(_NoticiaStateData) then) =
      __$NoticiaStateDataCopyWithImpl<$Res>;
  $Res call({List<Noticia> result});
}

/// @nodoc
class __$NoticiaStateDataCopyWithImpl<$Res>
    extends _$NoticiaStateCopyWithImpl<$Res>
    implements _$NoticiaStateDataCopyWith<$Res> {
  __$NoticiaStateDataCopyWithImpl(
      _NoticiaStateData _value, $Res Function(_NoticiaStateData) _then)
      : super(_value, (v) => _then(v as _NoticiaStateData));

  @override
  _NoticiaStateData get _value => super._value as _NoticiaStateData;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_NoticiaStateData(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Noticia>,
    ));
  }
}

/// @nodoc

class _$_NoticiaStateData implements _NoticiaStateData {
  const _$_NoticiaStateData({required this.result});

  @override
  final List<Noticia> result;

  @override
  String toString() {
    return 'NoticiaState.data(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticiaStateData &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$NoticiaStateDataCopyWith<_NoticiaStateData> get copyWith =>
      __$NoticiaStateDataCopyWithImpl<_NoticiaStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Noticia> result) data,
    required TResult Function(String? error) error,
  }) {
    return data(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
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
    required TResult Function(_NoticiaStateInitial value) initial,
    required TResult Function(_NoticiaStateLoading value) loading,
    required TResult Function(_NoticiaStateData value) data,
    required TResult Function(_NoticiaStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _NoticiaStateData implements NoticiaState {
  const factory _NoticiaStateData({required List<Noticia> result}) =
      _$_NoticiaStateData;

  List<Noticia> get result;
  @JsonKey(ignore: true)
  _$NoticiaStateDataCopyWith<_NoticiaStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoticiaStateErrorCopyWith<$Res> {
  factory _$NoticiaStateErrorCopyWith(
          _NoticiaStateError value, $Res Function(_NoticiaStateError) then) =
      __$NoticiaStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$NoticiaStateErrorCopyWithImpl<$Res>
    extends _$NoticiaStateCopyWithImpl<$Res>
    implements _$NoticiaStateErrorCopyWith<$Res> {
  __$NoticiaStateErrorCopyWithImpl(
      _NoticiaStateError _value, $Res Function(_NoticiaStateError) _then)
      : super(_value, (v) => _then(v as _NoticiaStateError));

  @override
  _NoticiaStateError get _value => super._value as _NoticiaStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_NoticiaStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NoticiaStateError implements _NoticiaStateError {
  const _$_NoticiaStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'NoticiaState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticiaStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$NoticiaStateErrorCopyWith<_NoticiaStateError> get copyWith =>
      __$NoticiaStateErrorCopyWithImpl<_NoticiaStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Noticia> result) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Noticia> result)? data,
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
    required TResult Function(_NoticiaStateInitial value) initial,
    required TResult Function(_NoticiaStateLoading value) loading,
    required TResult Function(_NoticiaStateData value) data,
    required TResult Function(_NoticiaStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticiaStateInitial value)? initial,
    TResult Function(_NoticiaStateLoading value)? loading,
    TResult Function(_NoticiaStateData value)? data,
    TResult Function(_NoticiaStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NoticiaStateError implements NoticiaState {
  const factory _NoticiaStateError([String? error]) = _$_NoticiaStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$NoticiaStateErrorCopyWith<_NoticiaStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
