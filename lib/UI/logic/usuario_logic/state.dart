import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xperiences/domain/entidades/destino.dart';
part 'state.freezed.dart';

@freezed
abstract class UsuarioState with _$UsuarioState {
  //Initial
  const factory UsuarioState.initial() = _UsuarioStateInitial;

  //Loading
  const factory UsuarioState.loading() = _UsuarioStateLoading;

  //Data
  const factory UsuarioState.data({required dynamic result}) =
      _UsuarioStateData;

  //Error
  const factory UsuarioState.error([String? error]) = _UsuarioStateError;
}
