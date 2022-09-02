import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xperiences/UI/widgets/destinoScreen.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';

class DestinosScreen extends StatelessWidget {
  const DestinosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return noticiaTile(context);
              },
            ),
          ],
        ),
      ),
    ));
  }

  Card noticiaTile(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.red),
          height: 60.0,
          width: 60.0, // fixed width and height
          child: Image.asset(
            "assets/user1.png",
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          "Destino turístico",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          children: [
            Text(
              "contenido destino asdasd asd asfas fsd fsdfsdfsdfsdf sdfs dfsdfs dfsf sdfsdfsdfsdf sdfsd fsdfs dfsdfsdf asa aasdasd aaaa asdasd aaasdsdsd",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => const DestinoScreen()));
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
