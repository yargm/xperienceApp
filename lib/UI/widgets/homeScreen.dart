import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xperiences/UI/logic/clima_logic/provider.dart';
import 'package:xperiences/UI/logic/clima_logic/state.dart';
import 'package:xperiences/UI/logic/noticia_logic/provider.dart';
import 'package:xperiences/UI/logic/noticia_logic/state.dart';
import 'package:xperiences/core/changeNotifier.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';
import 'package:xperiences/domain/entidades/clima.dart';
import 'package:xperiences/domain/entidades/noticia.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<Noticia> noticias = [];
  Clima? clima;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      ref
          .read(climaNotifier.notifier)
          .getClima(ref.read(controller.notifier).latLong!);
      ref
          .read(noticiaNotifier.notifier)
          .getNoticias(ref.read(controller.notifier).estado!);
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    ref.listen<ClimaState>(climaNotifier, (actualEstado, nuevoEstado) {
      nuevoEstado.when(
          initial: () {},
          loading: () {},
          data: (data) async {
            setState(() {
              clima = data;
            });
          },
          error: (e) {
            Fluttertoast.showToast(
                msg: "Ocurrió un error al cargar el clima :(");
          });
    });
    ref.listen<NoticiaState>(noticiaNotifier, (actualEstado, nuevoEstado) {
      nuevoEstado.when(
          initial: () {},
          loading: () {},
          data: (data) async {
            setState(() {
              noticias = data;
            });
          },
          error: (e) {
            Fluttertoast.showToast(
                msg: "Ocurrió un error al cargar las noticias :(");
          });
    });
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColor.verde_tres,
          leading: Icon(Icons.list),
          title: Row(
            children: [
              Text(
                  "Bienvenido ${ref.read(controller.notifier).usuarioActual!.nombre}",
                  style: TextStyle(fontSize: 18)),
              Spacer(),
              Container(
                height: 30.0,
                width: 30.0, // fixed width and height
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        ref.read(controller.notifier).usuarioActual!.imagenPath,
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  responsive.espacio("largo", 2),
                  RichText(
                    text: TextSpan(
                      text: 'Al parecer estás en ',
                      style: GoogleFonts.exo(
                          fontSize: 18, color: Colors.grey[800]),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                '${ref.read(controller.notifier).municipio}, ${ref.read(controller.notifier).estado}',
                            style: GoogleFonts.exo(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                  responsive.espacio("largo", 2),
                  Center(
                    child: Card(
                      elevation: 3,
                      child: Container(
                        width: responsive.wp(50),
                        height: responsive.hp(25),
                        padding: EdgeInsets.all(10),
                        child: clima == null
                            ? Image.asset("assets/loading2.gif",
                                width: responsive.hp(18))
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Center(
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: CustomColor.verde_uno,
                                              ),
                                              child: Image.asset("assets/" +
                                                  getPNG(clima!.icono))))),
                                  Text(
                                    "${clima!.temperatura} °C",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    clima!.descripcion,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: CustomColor.azul_tres,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Flexible(
                                        child: Text(
                                          "${ref.read(controller.notifier).municipio}, ${ref.read(controller.notifier).estado}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.grey),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                      ),
                    ),
                  ),
                  responsive.espacio("largo", 3),
                  Text(
                    "Mantente al día con las noticias de ${ref.read(controller.notifier).estado}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey[800]),
                  ),
                  responsive.espacio("largo", 1),
                  Text(
                    "Actualmente la gente está comentando sobre estos temas:",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  noticias.isEmpty
                      ? Center(
                          child: Image.asset("assets/loading2.gif",
                              width: responsive.hp(20)),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: noticias.length,
                          itemBuilder: (BuildContext context, int index) {
                            return noticiaTile(noticias[index]);
                          },
                        ),
                  responsive.espacio("largo", 2),
                ],
              ),
            ),
          ),
        ));
  }

  Card noticiaTile(Noticia noticia) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          height: 50.0,
          width: 50.0, // fixed width and height
          child: Image.network(
            noticia.imagen,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          noticia.titulo,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          noticia.descripcion,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: () {
          Fluttertoast.showToast(
              msg: "Visita nuestro sitio web para leer la noticia completa :)");
        },
      ),
    );
  }

  getPNG(String code) {
    print(code);
    switch (code) {
      case "03d":
        return "03.png";
      case "03n":
        return "03.png";

      case "04d":
        return "04.png";
      case "04n":
        return "04.png";

      case "09d":
        return "09.png";
      case "09n":
        return "09.png";

      case "11d":
        return "11.png";
      case "11n":
        return "11.png";

      case "13d":
        return "13.png";
      case "13n":
        return "13.png";

      case "50d":
        return "50.png";
      case "50n":
        return "50.png";

      default:
        return code + ".png";
    }
  }
}
