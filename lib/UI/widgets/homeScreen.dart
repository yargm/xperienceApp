import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String ciudad = "Tuxtla Gutiérrez";
  String estado = "Chiapas";
  String climaCode = "03";
  String temperatura = "26";
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColor.verde_tres,
          leading: Icon(Icons.list),
          title: Row(
            children: [
              Text("Bienvenido usuario", style: TextStyle(fontSize: 18)),
              Spacer(),
              Container(
                height: 30.0,
                width: 30.0, // fixed width and height
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/user1.png",
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
                            text: '$ciudad, $estado.',
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
                        child: Column(
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
                                        child: Image.asset(
                                            "assets/$climaCode.png")))),
                            Text(
                              "$temperatura °C",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
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
                                    "$ciudad, $estado",
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
                    "Mantente al día con las noticias de $estado",
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return noticiaTile();
                    },
                  ),
                  responsive.espacio("largo", 2),
                ],
              ),
            ),
          ),
        ));
  }

  Card noticiaTile() {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          height: 50.0,
          width: 50.0, // fixed width and height
          child: Image.asset(
            "assets/user1.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "Titulo noticia",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          "contenido noticia asdasd asd asfas fsd fsdfsdfsdfsdf sdfs dfsdfs dfsf sdfsdfsdfsdf sdfsd fsdfs dfsdfsdf asa aasdasd aaaa asdasd aaasdsdsd",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: () {
          Fluttertoast.showToast(
              msg: "Visita nuestro sitio web para leer la noticia completa !!");
        },
      ),
    );
  }
}
