import 'package:xperiences/data/models/noticiaModel.dart';
import 'package:xperiences/domain/entidades/destino.dart';

class DestinoModel extends Destino {
  DestinoModel(
      {required int idDestino,
      required String nombre,
      required String imagen1,
      required String imagen2,
      required String imagen3,
      required String descripcion,
      required double lat,
      required double lon,
      required String municipio})
      : super(
            idDestino: idDestino,
            nombre: nombre,
            imagen1: imagen1,
            imagen2: imagen2,
            imagen3: imagen3,
            descripcion: descripcion,
            lat: lat,
            lon: lon,
            municipio: municipio);

  factory DestinoModel.fromDataBase(Map map) {
    return DestinoModel(
        idDestino: map["idDestino"],
        nombre: map["nombre"],
        imagen1: map["imagen1"],
        imagen2: map["imagen2"],
        imagen3: map["imagen3"],
        descripcion: map["descripcion"],
        lat: map['lat'] != null && map['lat'] != ""
            ? double.parse(map['lat'])
            : 0,
        lon: map['lon'] != null && map['lon'] != ""
            ? double.parse(map['lon'])
            : 0,
        municipio: map["municipio"]);
  }
}
