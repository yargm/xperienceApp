import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/logic/noticia_logic/state.dart';
import 'package:xperiences/domain/useCases/noticiaCases.dart';

class NoticiaNotifier extends StateNotifier<NoticiaState> {
  NoticiaNotifier({
    required ObtenerNoticias get,
  })  : _get = get,
        super(const NoticiaState.initial());

  final ObtenerNoticias _get;
  //final BorrarNota _delete;

  Future<void> getNoticias(String estado) async {
    state = const NoticiaState.loading();
    try {
      final result = await _get.call(estado);
      state = NoticiaState.data(result: result);
    } catch (e) {
      state = NoticiaState.error(e.toString());
    }
  }
}
