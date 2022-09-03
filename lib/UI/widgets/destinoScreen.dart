import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:xperiences/core/changeNotifier.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';
import 'package:xperiences/domain/entidades/destino.dart';
import 'dart:async';

class DestinoScreen extends ConsumerStatefulWidget {
  Destino destino;
  DestinoScreen({Key? key, required this.destino}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DestinoScreenState();
}

class _DestinoScreenState extends ConsumerState<DestinoScreen> {
  int page = 0;
  bool isMapView = false;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    Completer<GoogleMapController> _controller = Completer();
    List<Marker> marcador = [
      Marker(
          markerId: MarkerId(widget.destino.idDestino.toString()),
          draggable: false,
          onTap: () {
            ref.read(controller.notifier).openUrl(
                "https://www.google.com.mx/maps/search/?api=1&query=${widget.destino.lat},${widget.destino.lon}");
          },
          infoWindow: InfoWindow(title: widget.destino.nombre),
          position: LatLng(widget.destino.lat, widget.destino.lon))
    ];
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
                          widget.destino.nombre,
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
                            "${widget.destino.municipio}, Chiapas",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                          )
                        ],
                      ),
                      Container(
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
                            imageItem(widget.destino.imagen1),
                            imageItem(widget.destino.imagen2),
                            imageItem(widget.destino.imagen3),
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
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        child: isMapView
                            ? Container(
                                height: responsive.hp(50),
                                child: GoogleMap(
                                  zoomGesturesEnabled: false,
                                  scrollGesturesEnabled: false,
                                  markers: Set.from(marcador),
                                  mapType: MapType.normal,
                                  initialCameraPosition: CameraPosition(
                                      target: LatLng(widget.destino.lat,
                                          widget.destino.lon),
                                      zoom: 16),
                                  onMapCreated:
                                      (GoogleMapController controller) {
                                    if (!_controller.isCompleted) {
                                      _controller.complete(controller);
                                    } else {}
                                  },
                                ),
                              )
                            : Text(
                                widget.destino.descripcion,
                              ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container imageItem(String image) {
    return Container(
      child: Image.network(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
