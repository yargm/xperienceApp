import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/data/models/climaModel.dart';
import 'package:xperiences/data/sources/remoto/iClimaRepo.dart';
import 'package:xperiences/domain/entidades/clima.dart';
import 'package:http/http.dart' as http;

class ClimaRepoImpl extends IClimaRepo {
  String apiKey = "314da9a170e6a18d7cdde0113a3a5d4d";

  @override
  Future<Clima> obtenerClima(LatLng latLon) async {
    try {
      final consulta = await http
          .get(Uri.parse(
              "https://api.openweathermap.org/data/2.5/weather?lat=${latLon.latitude}&lon=${latLon.longitude}&appid=$apiKey&lang=es&units=metric"))
          .timeout(Duration(seconds: 20));
      if (consulta.statusCode == 200) {
        final parsed = jsonDecode(consulta.body);
        return ClimaModel.fromJson(parsed);
      } else {
        return Future.error("Ocurrió un error");
      }
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }
}
