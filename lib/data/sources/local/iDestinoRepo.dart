import 'package:xperiences/domain/entidades/destino.dart';

abstract class IDestinoRepo {
  Future<List<Destino>> obtenerDestinos();
}
