import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entidades/clima.dart';
part 'state.freezed.dart';

@freezed
abstract class ClimaState with _$ClimaState {
  //Initial
  const factory ClimaState.initial() = _ClimaStateInitial;

  //Loading
  const factory ClimaState.loading() = _ClimaStateLoading;

  //Data
  const factory ClimaState.data({required Clima result}) = _ClimaStateData;

  //Error
  const factory ClimaState.error([String? error]) = _ClimaStateError;
}
