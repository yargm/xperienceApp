import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/data/sources/remoto/iClimaRepo.dart';
import 'package:xperiences/domain/entidades/clima.dart';
import 'package:xperiences/domain/repositorio/iClimaDRepo.dart';

class ClimaDRepoImpl extends IClimaDRepo {
  final IClimaRepo _limaLocal;
  ClimaDRepoImpl(this._limaLocal);
  @override
  Future<Clima> obtenerClima(LatLng latLon) async {
    try {
      final result = await _limaLocal.obtenerClima(latLon);
      return result;
    } catch (e) {
      print(e.toString() + '+********************');
      return Future.error(e);
    }
  }
}
