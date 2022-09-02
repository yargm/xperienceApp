import 'package:equatable/equatable.dart';

class Destino extends Equatable {
  int idDestino;
  String nombre;
  String imagen1;
  String imagen2;
  String imagen3;
  String descripcion;
  double lat;
  double lon;
  String municipio;

  Destino({
    required this.idDestino,
    required this.nombre,
    required this.imagen1,
    required this.imagen2,
    required this.imagen3,
    required this.descripcion,
    required this.lat,
    required this.lon,
    required this.municipio,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [nombre, lon, imagen1, imagen2, imagen3, descripcion, lat, municipio];
}
