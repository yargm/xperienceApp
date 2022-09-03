import 'package:xperiences/domain/entidades/noticia.dart';
import 'package:xperiences/domain/repositorio/iNoticiaDRepo.dart';

class ObtenerNoticias {
  ObtenerNoticias(this._noticiaRepo);

  final INoticiaDRepo _noticiaRepo;
  Future<List<Noticia>> call(String estado) async =>
      await _noticiaRepo.obtenerNoticias(estado);
}
