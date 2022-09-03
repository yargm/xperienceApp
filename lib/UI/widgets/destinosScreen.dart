import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xperiences/UI/logic/destino_logic/provider.dart';
import 'package:xperiences/UI/logic/destino_logic/state.dart';
import 'package:xperiences/UI/widgets/destinoScreen.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';
import 'package:xperiences/domain/entidades/destino.dart';

class DestinosScreen extends ConsumerStatefulWidget {
  const DestinosScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DestinosScreenState();
}

class _DestinosScreenState extends ConsumerState<DestinosScreen> {
  List<Destino> destinos = [];
  DestinoState? state;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      ref.read(destinoNotifier.notifier).getDestinos();
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    ref.listen<DestinoState>(destinoNotifier, (actualEstado, nuevoEstado) {
      setState(() {
        state = nuevoEstado;
      });
      nuevoEstado.when(
          initial: () {},
          loading: () {},
          data: (data) async {
            if (data is List<Destino> && data.isNotEmpty) {
              destinos = data;
            } else {
              Fluttertoast.showToast(
                  msg: "Ocurrió un error, intenta nuevamente");
            }
          },
          error: (e) {
            Fluttertoast.showToast(msg: "Ocurrió un error, intenta nuevamente");
          });
    });
    return SafeArea(
        child: Container(
      height: responsive.hp(100),
      width: responsive.wp(100),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/topBackground.png"),
              fit: BoxFit.fitHeight)),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Descubre tus destinos favoritos en Chiapas",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold),
            ),
            responsive.espacio("largo", 3),
            state == const DestinoState.loading()
                ? Image.asset("assets/loading2.gif", width: responsive.hp(15))
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: destinos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return noticiaTile(context, destinos[index]);
                    },
                  ),
          ],
        ),
      ),
    ));
  }

  Card noticiaTile(BuildContext context, Destino destino) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(
                  destino.imagen1,
                ),
                fit: BoxFit.cover,
              )),
          height: 60.0,
          width: 60.0,
        ),
        title: Text(
          destino.nombre,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          children: [
            Text(
              destino.descripcion,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => DestinoScreen(
                              destino: destino,
                            )));
                  },
                  style:
                      ElevatedButton.styleFrom(primary: CustomColor.azul_tres),
                  child: Text("Ver más")),
            )
          ],
        ),
      ),
    );
  }
}
