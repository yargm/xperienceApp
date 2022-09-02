import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  int idUsuario;
  String nombre;
  String correo;
  String contrasena;
  String tokenFirebase;
  String imagenPath;
  double lat;
  double lon;

  Usuario({
    required this.idUsuario,
    required this.nombre,
    required this.correo,
    required this.contrasena,
    required this.tokenFirebase,
    required this.imagenPath,
    required this.lat,
    required this.lon,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [nombre, correo, lat, tokenFirebase, imagenPath, lon, contrasena];
}

class UsuarioFields {
  static final String idUsuario = "_idUsuario";
  static final String nombre = "nombre";
  static final String correo = "correo";
  static final String contrasena = "contrasena";
  static final String tokenFirebase = "tokenFirebase";
  static final String imagenPath = "imagenPath";
  static final String lat = "lat";
  static final String lon = "lon";
}
