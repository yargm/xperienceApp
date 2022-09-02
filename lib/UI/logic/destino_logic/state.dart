import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xperiences/domain/entidades/destino.dart';
part 'state.freezed.dart';

@freezed
abstract class DestinoState with _$DestinoState {
  //Initial
  const factory DestinoState.initial() = _DestinoStateInitial;

  //Loading
  const factory DestinoState.loading() = _DestinoStateLoading;

  //Data
  const factory DestinoState.data({required List<Destino> result}) =
      _DestinoStateData;

  //Error
  const factory DestinoState.error([String? error]) = _DestinoStateError;
}
