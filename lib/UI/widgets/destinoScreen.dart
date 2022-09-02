import 'package:flutter/material.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';

class DestinoScreen extends StatefulWidget {
  const DestinoScreen({Key? key}) : super(key: key);

  @override
  State<DestinoScreen> createState() => _DestinoScreenState();
}

class _DestinoScreenState extends State<DestinoScreen> {
  int page = 0;
  bool isMapView = false;
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    PageController controlCarrusel = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles del destino"),
        backgroundColor: CustomColor.verde_tres,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nombre del destino",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: CustomColor.azul_tres,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Municipio, Estado",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                          )
                        ],
                      ),
                      Container(
                        color: Colors.amber,
                        height: responsive.hp(25),
                        width: responsive.width,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: PageView(
                          controller: controlCarrusel,
                          onPageChanged: (pageP) {
                            setState(() {
                              page = pageP;
                            });
                          },
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Image.asset(
                                "assets/user2.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Image.asset(
                                "assets/user2.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Image.asset(
                                "assets/user2.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.circle,
                            color: page == 0
                                ? CustomColor.azul_dos
                                : Colors.grey[300],
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.circle,
                            color: page == 1
                                ? CustomColor.azul_dos
                                : Colors.grey[300],
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.circle,
                            color: page == 2
                                ? CustomColor.azul_dos
                                : Colors.grey[300],
                            size: 15,
                          )
                        ],
                      ),
                      responsive.espacio("largo", 2),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: CustomColor.azul_tres,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Horario:\nLunes a Viernes 10:00 AM - 12:00 AM",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                  elevation: 3,
                  child: Column(
                    children: [
                      Row(children: [
                        Expanded(
                            child: Container(
                          color: !isMapView ? CustomColor.verde_uno : null,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  isMapView = false;
                                });
                              },
                              child: Text("Más información")),
                        )),
                        Expanded(
                            child: Container(
                          color: isMapView ? CustomColor.verde_uno : null,
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  isMapView = true;
                                });
                              },
                              child: Text("Cómo llegar")),
                        ))
                      ]),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: isMapView
                            ? Container(
                                height: responsive.hp(50),
                              )
                            : Text(" este es el texto de descripción"),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
