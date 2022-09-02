import 'package:sqflite/sqflite.dart';
import 'package:xperiences/bdModel/model.dart';
import 'package:xperiences/data/models/destinoModel.dart';
import 'package:xperiences/data/sources/local/iDestinoRepo.dart';
import 'package:xperiences/domain/entidades/destino.dart';

class DestinoRepoImpl extends IDestinoRepo {
  @override
  Future<List<Destino>> obtenerDestinos() async {
    try {
      List<Destino> destinos = [];
      Database db = await XperienceDatabase.instance.database;
      List<Map> maps = await db.query("destinos");
      for (var map in maps) {
        destinos.add(DestinoModel.fromDataBase(map));
      }
      return destinos;
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }
}
