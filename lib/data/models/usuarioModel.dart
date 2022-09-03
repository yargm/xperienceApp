import 'package:xperiences/domain/entidades/usuario.dart';

class UsuarioModel extends Usuario {
  UsuarioModel(
      {required int idUsuario,
      required String nombre,
      required String correo,
      required String contrasena,
      required String imagenPath})
      : super(
            idUsuario: idUsuario,
            nombre: nombre,
            correo: correo,
            contrasena: contrasena,
            imagenPath: imagenPath);

  factory UsuarioModel.fromDatabase(Map map) {
    return UsuarioModel(
      idUsuario: map['idUsuario'],
      nombre: map['nombre'],
      correo: map['correo'],
      contrasena: map['contrasena'],
      imagenPath: map['imagenPath'],
    );
  }
}
