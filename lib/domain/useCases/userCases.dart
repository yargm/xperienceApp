import 'package:xperiences/domain/repositorio/iUsuarioDRepo.dart';

class ObtenerUsuario {
  ObtenerUsuario(this._userRepo);

  final IUsuarioDRepo _userRepo;

  Future<dynamic> call() async => await _userRepo.obtenerUsuario();
}

class BorrarDatos {
  BorrarDatos(this._userRepo);

  final IUsuarioDRepo _userRepo;

  Future<bool> call() async => await _userRepo.borrarDatos();
}

class IniciarSesion {
  IniciarSesion(this._userRepo);

  final IUsuarioDRepo _userRepo;

  Future<dynamic> call(String correo, String contrasena) async =>
      await _userRepo.iniciarSesion(correo, contrasena);
}
