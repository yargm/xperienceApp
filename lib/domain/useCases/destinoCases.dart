import 'package:xperiences/domain/entidades/destino.dart';
import 'package:xperiences/domain/repositorio/iDestinoDRepo.dart';

class ObtenerDestinos {
  ObtenerDestinos(this._destinoRepo);

  final IDestinoDRepo _destinoRepo;
  Future<List<Destino>> call() async => await _destinoRepo.obtenerDestinos();
}
