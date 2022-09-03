import 'package:xperiences/data/sources/remoto/iNoticiaRepo.dart';
import 'package:xperiences/domain/entidades/noticia.dart';
import 'package:xperiences/domain/repositorio/iNoticiaDRepo.dart';

class NoticiaDRepoImpl extends INoticiaDRepo {
  final INoticiaRepo _noticiaLocal;
  NoticiaDRepoImpl(this._noticiaLocal);
  @override
  Future<List<Noticia>> obtenerNoticias(String estado) async {
    try {
      final result = await _noticiaLocal.obtenerNoticias(estado);
      return result;
    } catch (e) {
      print(e.toString() + '+********************');
      return Future.error(e);
    }
  }
}
