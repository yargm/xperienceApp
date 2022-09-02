import 'package:xperiences/domain/entidades/destino.dart';
import 'package:xperiences/domain/repositorio/iDestinoDRepo.dart';

class ObtenerDestinos {
  ObtenerDestinos(this._destinoLocalRepo);

  final IDestinoDRepo _destinoLocalRepo;
  Future<List<Destino>> call() async =>
      await _destinoLocalRepo.obtenerDestinos();
}
