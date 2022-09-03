import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entidades/noticia.dart';
part 'state.freezed.dart';

@freezed
abstract class NoticiaState with _$NoticiaState {
  //Initial
  const factory NoticiaState.initial() = _NoticiaStateInitial;

  //Loading
  const factory NoticiaState.loading() = _NoticiaStateLoading;

  //Data
  const factory NoticiaState.data({required List<Noticia> result}) =
      _NoticiaStateData;

  //Error
  const factory NoticiaState.error([String? error]) = _NoticiaStateError;
}
