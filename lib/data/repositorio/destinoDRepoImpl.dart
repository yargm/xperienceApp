import 'package:xperiences/data/sources/local/iDestinoRepo.dart';
import 'package:xperiences/domain/entidades/destino.dart';
import 'package:xperiences/domain/repositorio/iDestinoDRepo.dart';

class DestinoDRepoImpl extends IDestinoDRepo {
  final IDestinoRepo _destinoLocal;
  DestinoDRepoImpl(this._destinoLocal);
  @override
  Future<List<Destino>> obtenerDestinos() async {
    try {
      final result = await _destinoLocal.obtenerDestinos();
      return result;
    } catch (e) {
      print(e.toString() + '+********************');
      return Future.error(e);
    }
  }
}
