import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xperiences/bdModel/model.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/domain/entidades/usuario.dart';

final controller = ChangeNotifierProvider<Controller>((ref) {
  return Controller();
});

class Controller with ChangeNotifier {
  LatLng? latLong;
  String? estado;
  String? municipio;
  Usuario? usuarioActual;

  putUsuario(Usuario usuario) {
    usuarioActual = usuario;
    notifyListeners();
  }

  //-------------------- MÉTODO PARA CHECAR PERMISOS DE UBICACIÓN Y ESTADO DEL GPS
  Future checkLocationPermission(BuildContext context) async {
    var permiso = await Permission.locationWhenInUse.request();
    if (permiso.isGranted || permiso.isLimited) {
      bool permiso = await Location().serviceEnabled();
      if (permiso) {
        //gps activado
        try {
          var ubicacion = await Location().getLocation();
          latLong = LatLng(
              ubicacion.latitude!.toDouble(), ubicacion.longitude!.toDouble());
          List<geo.Placemark> data = await geo.placemarkFromCoordinates(
              ubicacion.latitude!, ubicacion.longitude!);
          var direccion = data.first;
          estado = direccion.administrativeArea!;
          municipio = direccion.locality!;
          return true;
        } catch (e) {
          print(e);
          return false;
        }
      } else {
        //gps desactivado
        await Location().requestService();
        return "reintentar";
      }
    } else {
      var reintentar = await showDialog(
          context: context,
          builder: (context) {
            return WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                title: Text("Permiso denegado"),
                content: Text(
                    "Acceder a tu ubicación es necesario para que Xperience funcione correctamente. Por favor concede los permisos en la configuración de la aplicación"),
                actions: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: CustomColor.azul_tres),
                      onPressed: () async {
                        await openAppSettings();
                      },
                      child: Text("Abrir configuración")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: CustomColor.azul_tres),
                      onPressed: () async {
                        Navigator.pop(context, "reintentar");
                      },
                      child: Text("Reintentar")),
                ],
              ),
            );
          });
      return reintentar;
    }
  }

  Future<bool> insertInitialData() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      var res = prefs.getBool("initialData");
      if (res == null) {
        Database db = await XperienceDatabase.instance.database;
        await db.insert(
            "usuarios",
            {
              'idUsuario': 1,
              'nombre': "Yareni",
              'correo': "yareni@gmail.com",
              'contrasena': "yareni",
              'imagenPath': "assets/user1.png",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await db.insert(
            "usuarios",
            {
              'idUsuario': 2,
              'nombre': "Ana",
              'correo': "ana@gmail.com",
              'contrasena': "ana",
              'imagenPath': "assets/user2.png",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await db.insert(
            "destinos",
            {
              'idDestino': 1,
              'nombre': "Zona Arqueológica Palenque",
              'imagen1':
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Palenque_temple_2.jpg/1200px-Palenque_temple_2.jpg",
              'imagen2':
                  "https://arqueologiamexicana.mx/sites/default/files/styles/arq1200x600/public/martinez_am2_1.jpg?itok=-yK6lrK9",
              'imagen3':
                  "https://infolat.news/wp-content/uploads/2021/07/palenque-chiapas.jpg",
              'descripcion':
                  "Es uno de los yacimientos arqueológicos mayas más relevantes en México y Centroamérica, en el municipio chiapaneco de Palenque, cuya mayor parte está por desenterrar, un trabajo que los especialistas llevan con muchas precauciones. Fue visto por primera vez por los españoles en 1567, aunque el interés por el lugar tuvo que esperar hasta el siglo XVIII. Cuenta con construcciones en la típica arquitectura piramidal y cuadrangular maya, espléndidamente conservadas, como el Templo de las Inscripciones, el Templo del Conde, el Templo del Sol y El Observatorio. Los bajorrelieves de Pakal el Grande, célebre gobernante maya del siglo VII, muestran el talento artístico de esta civilización.",
              'lat': "17.48550648385637",
              'lon': "-92.04604510371176",
              'municipio': "Palenque",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await db.insert(
            "destinos",
            {
              'idDestino': 2,
              'nombre': "Cañón del sumidero",
              'imagen1':
                  "https://tipsparatuviaje.com/wp-content/uploads/2016/05/7.-Ca%C3%B1%C3%B3n-del-Sumidero.jpg",
              'imagen2':
                  "https://www.chiapasparalelo.com/wp-content/uploads/2020/12/3d89cd96-0fef-42f2-b304-394f5773bbe5.jpg",
              'imagen3':
                  "https://enamoratedechiapas.com/wp-content/uploads/2020/01/sumidero-600x393.jpg",
              'descripcion':
                  "Este imponente cañón de la Sierra Norte de Chiapas, a solo 5 kilómetros de Tuxtla Gutiérrez, produce vértigo con sus 1.300 metros de profundidad, apenas mitigado por la visión del caudaloso río Grijalva corriendo por su cauce. Los amantes de la observación natural visitan el lugar con categoría de parque nacional por la riqueza de su flora y de su fauna. Ya no es tan fácil ver un jaguar, salvo en el estadio de Tuxtla, cuyo equipo de fútbol son los Jaguares de Chiapas. Pero es posible avistar garzas, patos, pelícanos e incluso águilas y halcones. Si te animas selva adentro, la naturaleza te premiará con monos, osos hormigueros y caimanes. En las partes bajas hay imponentes ceibas y encinos, y a mayor altura, la típica vegetación alpina.",
              'lat': "16.84310991507129",
              'lon': "-93.0809040364486",
              'municipio': "Tuxtla Gutiérrez",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await db.insert(
            "destinos",
            {
              'idDestino': 3,
              'nombre': "Bonampak",
              'imagen1':
                  "https://tipsparatuviaje.com/wp-content/uploads/2016/05/8.-Bonampak.jpg",
              'imagen2':
                  "https://upload.wikimedia.org/wikipedia/commons/8/84/Bonampak_pyramid.jpg",
              'imagen3':
                  "https://www.azul-natour.com/wp-content/uploads/2019/12/1.-Pinturas-murales-con-escenas-importantes-en-la-historia-de-Bonampak-Chis-1024x696.jpg",
              'descripcion':
                  "Es un yacimiento arqueológico situado en medio de la Selva Lacandona del estado de Chiapas, a 30 kilómetros de la antigua ciudad maya de Yaxchilán. México es el país más importante del mundo en el arte de la pintura mural, principalmente a través de la obra de Diego Rivera, José Clemente Orozco y David Alfaro Siqueiros. Esta tradición viene de los mayas, siendo Bonampk uno de los principales tesoros del muralismo prehispánico. Los frescos cuentan con notable realismo las actividades cotidianas de la vida indígena, como el trabajo, la ejecución musical, los bailes, los oficios religiosos e incluso los aterradores sacrificios humanos.",
              'lat': "16.711993165058736",
              'lon': "-91.06438715177893",
              'municipio': "Ocosingo",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await db.insert(
            "destinos",
            {
              'idDestino': 4,
              'nombre': "Lagunas de Montebello",
              'imagen1':
                  "https://tipsparatuviaje.com/wp-content/uploads/2016/05/10.-Lagunas-de-Montebello.jpg",
              'imagen2':
                  "https://www.mexicodesconocido.com.mx/wp-content/uploads/2010/06/Jesus-CASCADAS-DE-VELO-DE-NOVIA-min-scaled.jpeg",
              'imagen3':
                  "https://topadventure.com/__export/1620668973063/sites/laverdad/img/2021/05/10/lagunas_de_montebello_chiapas_la_portada.jpeg_577724383.jpeg",
              'descripcion':
                  "Es un parque nacional de más de 6.000 hectáreas, cuyo principal atractivo son sus lagunas, cuya coloración hace una bonita gradación entre el verde y el azul turquesa.  Se encuentra cerca de la frontera con Guatemala, entre los municipios chiapanecos de La Trinitaria e Independencia. El nombre del lugar procede de la belleza de su flora, en la que destaca el estoraque, un árbol que exuda una resina desinfectante y purificante, vendida como «incienso americano» Los turistas van a Montebello a pasear en balsas y kayaks por sus corrientes y lagunas y a observar la vida silvestre. Con suerte, es posible que veas un Quetzal, ave amenazada, de precioso plumaje.",
              'lat': "16.09924734818615",
              'lon': "-91.67375471163446",
              'municipio': "La Trinitaria",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await prefs.setBool("initialData", true);
        return true;
      } else {
        return true;
      }
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }

  Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      Fluttertoast.showToast(msg: "No se pudo abrir el link");
    }
  }
}
