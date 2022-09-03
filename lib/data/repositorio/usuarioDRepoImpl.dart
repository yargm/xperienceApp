import 'package:xperiences/data/sources/local/iUsuarioRepo.dart';
import 'package:xperiences/domain/repositorio/iUsuarioDRepo.dart';

class UsuarioDRepoImpl extends IUsuarioDRepo {
  final IUsuarioRepo _usuarioLocal;
  UsuarioDRepoImpl(this._usuarioLocal);
  @override
  Future<bool> borrarDatos() async {
    try {
      final result = await _usuarioLocal.borrarDatos();
      return result;
    } catch (e) {
      print(e.toString() + '+********************');
      return Future.error(e);
    }
  }

  @override
  Future iniciarSesion(String correo, String contrasena) async {
    try {
      final result = await _usuarioLocal.iniciarSesion(correo, contrasena);
      return result;
    } catch (e) {
      print(e.toString() + '+********************');
      return Future.error(e);
    }
  }

  @override
  Future obtenerUsuario() async {
    try {
      final result = await _usuarioLocal.obtenerUsuario();
      return result;
    } catch (e) {
      print(e.toString() + '+********************');
      return Future.error(e);
    }
  }
}
