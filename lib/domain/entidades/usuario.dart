import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  int idUsuario;
  String nombre;
  String correo;
  String contrasena;
  String imagenPath;

  Usuario({
    required this.idUsuario,
    required this.nombre,
    required this.correo,
    required this.contrasena,
    required this.imagenPath,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [nombre, correo, imagenPath, contrasena];
}
