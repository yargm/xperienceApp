import 'package:xperiences/domain/entidades/usuario.dart';

class UsuarioModel extends Usuario {
  UsuarioModel(
      {required int idUsuario,
      required String nombre,
      required String correo,
      required String contrasena,
      required String tokenFirebase,
      required String imagenPath,
      required double lat,
      required double lon})
      : super(
            idUsuario: idUsuario,
            nombre: nombre,
            correo: correo,
            contrasena: contrasena,
            tokenFirebase: tokenFirebase,
            imagenPath: imagenPath,
            lat: lat,
            lon: lon);

  factory UsuarioModel.fromDatabase(Map map) {
    return UsuarioModel(
      idUsuario: map['idUsuario'],
      nombre: map['nombre'],
      correo: map['correo'],
      contrasena: map['contrasena'],
      tokenFirebase: map['tokenFirebase'],
      imagenPath: map['imagenPath'],
      lat:
          map['lat'] != null && map['lat'] != "" ? double.parse(map['lat']) : 0,
      lon:
          map['lon'] != null && map['lon'] != "" ? double.parse(map['lon']) : 0,
    );
  }
}
