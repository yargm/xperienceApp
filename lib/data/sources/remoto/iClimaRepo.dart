import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/domain/entidades/clima.dart';

abstract class IClimaRepo {
  Future<Clima> obtenerClima(LatLng latLon);
}
