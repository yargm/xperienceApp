import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/domain/entidades/clima.dart';
import 'package:xperiences/domain/repositorio/iClimaDRepo.dart';

class ObtenerClima {
  ObtenerClima(this._climaRepo);

  final IClimaDRepo _climaRepo;
  Future<Clima> call(LatLng latLon) async =>
      await _climaRepo.obtenerClima(latLon);
}
