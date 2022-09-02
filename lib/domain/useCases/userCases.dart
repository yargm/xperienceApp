import 'package:xperiences/domain/repositorio/iUsuarioDRepo.dart';

class InsertarDatos {
  InsertarDatos(this._userLocalRepo);

  final IUsuarioDRepo _userLocalRepo;

  Future<bool> call() async => await _userLocalRepo.insertInitialData();
}

class ObtenerUsuario {
  ObtenerUsuario(this._userLocalRepo);

  final IUsuarioDRepo _userLocalRepo;

  Future<bool> call() async => await _userLocalRepo.obtenerUsuario();
}

class BorrarDatos {
  BorrarDatos(this._userLocalRepo);

  final IUsuarioDRepo _userLocalRepo;

  Future<bool> call() async => await _userLocalRepo.borrarDatos();
}

class IniciarSesion {
  IniciarSesion(this._userLocalRepo);

  final IUsuarioDRepo _userLocalRepo;

  Future<bool> call(String correo, String contrasena) async =>
      await _userLocalRepo.iniciarSesion(correo, contrasena);
}
