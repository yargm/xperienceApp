import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/UI/logic/clima_logic/state.dart';
import 'package:xperiences/domain/useCases/climaCases.dart';

class ClimaNotifier extends StateNotifier<ClimaState> {
  ClimaNotifier({
    required ObtenerClima get,
  })  : _get = get,
        super(const ClimaState.initial());

  final ObtenerClima _get;
  //final BorrarNota _delete;

  Future<void> getClima(LatLng latLng) async {
    state = const ClimaState.loading();
    try {
      final result = await _get.call(latLng);
      state = ClimaState.data(result: result);
    } catch (e) {
      state = ClimaState.error(e.toString());
    }
  }
}
