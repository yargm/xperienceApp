import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:xperiences/bdModel/model.dart';
import 'package:xperiences/data/models/usuarioModel.dart';
import 'package:xperiences/data/sources/local/iUsuarioRepo.dart';
import 'package:xperiences/domain/entidades/usuario.dart';

class UsuarioRepoImpl extends IUsuarioRepo {
  @override
  Future<bool> borrarDatos() async {
    try {
      Database db = await XperienceDatabase.instance.database;
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setInt("userID", 0);
      return true;
    } catch (e) {
      print("LOCAL $e");
      return Future.error(e);
    }
  }

  @override
  Future<dynamic> iniciarSesion(String correo, String contrasena) async {
    try {
      Database db = await XperienceDatabase.instance.database;
      List<Map> maps = await db.query('usuarios',
          where: "correo ? and contrasena = ?",
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
              'nombre': "Yareni Grajales Mérida",
              'correo': "yareni@gmail.com",
              'contrasena': "yareni",
              'tokenFirebase': "",
              'imagenPath': "assets/user1.png",
              'lat': "",
              'lon': "",
            },
            conflictAlgorithm: ConflictAlgorithm.replace);
        await db.insert(
            "usuarios",
            {
              'idUsuario': 2,
              'nombre': "Ana Pérez López",
              'correo': "ana@gmail.com",
              'contrasena': "ana",
              'tokenFirebase': "",
              'imagenPath': "assets/user2.png",
              'lat': "",
              'lon': "",
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
                  "https://www.entornoturistico.com/wp-content/uploads/2017/12/Ca%C3%B1on-del-Sumidero-visto-desde-una-lancha.jpg",
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
        //ya están insertados
        return true;
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
      if (id != null || id == 0) {
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
