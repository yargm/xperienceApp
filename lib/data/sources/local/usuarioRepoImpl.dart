import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:xperiences/bdModel/model.dart';
import 'package:xperiences/data/models/usuarioModel.dart';
import 'package:xperiences/data/sources/local/iUsuarioRepo.dart';
import 'package:http/http.dart' as http;

class UsuarioRepoImpl extends IUsuarioRepo {
  @override
  Future<bool> borrarDatos() async {
    try {
      bool notifica = await sendNotificacion();
      if (!notifica) {
        Fluttertoast.showToast(
            msg: "No pudimos enviarte la notificación de despedida :(");
      }
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setInt("userID", 0);
      return true;
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }

  String accesToken =
      "AAAADXDGaCI:APA91bEQMCwuLROqS05j3Pj3zM9QdvyqJBLJvSbN_BBsmJMZu-7HcoNb7O1pBWHY4enztfj2d55nkGhOeZpIV8GtiPXY2YaALIRPK_VwA7osRSw2Ing9PFGX3BOI5FriNBlO5vIUob4a";

  //-------------------- API LIST DIRECCIONES
  Future<bool> sendNotificacion() async {
    try {
      String? tokenFirebase = await FirebaseMessaging.instance.getToken();
      print(tokenFirebase);
      var url = Uri.parse("https://fcm.googleapis.com/fcm/send");
      final consulta = await http
          .post(url,
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
                'accept': 'application/json',
                'Authorization': "Bearer $accesToken",
              },
              body: jsonEncode({
                "to": tokenFirebase,
                "notification": {
                  "title": "Te extrañaremos !!",
                  "body":
                      "Vuelve pronto, estaremos mejorando la experiencia de viajar y conocer lugares"
                },
                "data": {}
              }))
          .timeout(Duration(seconds: 20));
      if (consulta.statusCode == 200) {
        print("notificacion enviada");
        return true;
      } else {
        print(consulta.body);
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<dynamic> iniciarSesion(String correo, String contrasena) async {
    try {
      Database db = await XperienceDatabase.instance.database;
      List<Map> maps = await db.query('usuarios',
          where: "correo = ? and contrasena = ?",
          whereArgs: [correo, contrasena]);
      if (maps.isEmpty) {
        return null;
      } else {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setInt("userID", maps.first["idUsuario"]);
        return UsuarioModel.fromDatabase(maps.first);
      }
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }

  @override
  Future<dynamic> obtenerUsuario() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      var id = prefs.getInt("userID");
      if (id != null && id != 0) {
        Database db = await XperienceDatabase.instance.database;
        List<Map> maps =
            await db.query('usuarios', where: "idUsuario = ?", whereArgs: [id]);
        return UsuarioModel.fromDatabase(maps.first);
      } else {
        return null;
      }
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }
}
