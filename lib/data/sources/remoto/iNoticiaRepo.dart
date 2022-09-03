import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/domain/entidades/clima.dart';
import 'package:xperiences/domain/entidades/noticia.dart';

abstract class INoticiaRepo {
  Future<List<Noticia>> obtenerNoticias(String estado);
}
