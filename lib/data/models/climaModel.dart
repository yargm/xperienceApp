import 'package:xperiences/domain/entidades/clima.dart';

class ClimaModel extends Clima {
  ClimaModel(
      {required String icono,
      required String descripcion,
      required double lat,
      required double lon,
      required double temperatura})
      : super(
            icono: icono,
            descripcion: descripcion,
            lat: lat,
            lon: lon,
            temperatura: temperatura);

  factory ClimaModel.fromJson(Map map) {
    return ClimaModel(
      descripcion: map["weather"][0]["description"],
      icono: map["weather"][0]["icon"],
      temperatura: map["main"]["temp"],
      lat: map["coord"]["lat"],
      lon: map["coord"]["lon"],
    );
  }
}
