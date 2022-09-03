import 'package:equatable/equatable.dart';

class Clima extends Equatable {
  double lat;
  String icono;
  String descripcion;
  double lon;
  double temperatura;

  Clima({
    required this.icono,
    required this.descripcion,
    required this.lat,
    required this.lon,
    required this.temperatura,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [lat, lon, icono, descripcion, temperatura];
}
