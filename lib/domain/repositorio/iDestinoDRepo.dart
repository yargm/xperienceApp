import 'package:xperiences/domain/entidades/destino.dart';

abstract class IDestinoDRepo {
  Future<List<Destino>> obtenerDestinos();
}
