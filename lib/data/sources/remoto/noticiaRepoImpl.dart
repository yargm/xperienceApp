import 'dart:convert';
import 'package:xperiences/data/models/noticiaModel.dart';
import 'package:xperiences/data/sources/remoto/iNoticiaRepo.dart';
import 'package:http/http.dart' as http;
import 'package:xperiences/domain/entidades/noticia.dart';

class NoticiaRepoImpl extends INoticiaRepo {
  String apiKey = "e1226dfc9214196336e5d5761c10542f";

  @override
  Future<List<Noticia>> obtenerNoticias(String estado) async {
    try {
      final consulta = await http
          .get(Uri.parse(
              "http://api.mediastack.com/v1/news?access_key=$apiKey&keywords=$estado&languages=es&limit=4"))
          .timeout(Duration(seconds: 20));
      if (consulta.statusCode == 200) {
        final parsed = jsonDecode(consulta.body);
        return parsed["data"]
            .map<NoticiaModel>((json) => NoticiaModel.fromJson(json))
            .toList();
      } else {
        return Future.error("Ocurrió un error");
      }
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }
}
