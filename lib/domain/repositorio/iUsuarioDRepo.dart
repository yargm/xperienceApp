import 'package:xperiences/domain/entidades/usuario.dart';

abstract class IUsuarioDRepo {
  Future<dynamic> obtenerUsuario();
  Future<bool> borrarDatos();
  Future<dynamic> iniciarSesion(String correo, String contrasena);
}
