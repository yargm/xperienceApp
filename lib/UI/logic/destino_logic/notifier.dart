import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xperiences/UI/logic/destino_logic/state.dart';
import 'package:xperiences/domain/useCases/destinoCases.dart';

class DestinoNotifier extends StateNotifier<DestinoState> {
  DestinoNotifier({
    required ObtenerDestinos get,
  })  : _get = get,
        super(const DestinoState.initial());

  final ObtenerDestinos _get;
  //final BorrarNota _delete;

  Future<void> getDestinos() async {
    state = const DestinoState.loading();
    try {
      final result = await _get.call();
      state = DestinoState.data(result: result);
    } catch (e) {
      state = DestinoState.error(e.toString());
    }
  }
}
