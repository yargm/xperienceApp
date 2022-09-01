import 'package:flutter/material.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/responsive.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SafeArea(
      child: Container(
        height: responsive.hp(100),
        width: responsive.wp(100),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bottomBackground.png"),
                fit: BoxFit.fitHeight)),
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
                elevation: 3,
                child: ListTile(
                  leading: SizedBox(
                    height: 50.0,
                    width: 50.0, // fixed width and height
                    child: Image.asset(
                      "assets/user1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Nombre de usuario",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: Text("correo@correo.com"),
                  trailing: notificacionIcono(),
                )),
            responsive.espacio("largo", 2),
            Card(
                elevation: 3,
                child: ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(
                    Icons.person_outline_sharp,
                    color: Colors.grey,
                    size: 25,
                  ),
                  title: Text(
                    "Ajustes de cuenta",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Icon(
                    Icons.edit_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                )),
            responsive.espacio("largo", 2),
            Card(
                elevation: 3,
                child: Column(
                  children: [
                    opcionTile(Icons.translate, "Idioma"),
                    opcionTile(Icons.chat, "Soporte"),
                    opcionTile(Icons.star_border_rounded, "Califícanos"),
                    opcionTile(Icons.arrow_circle_up_rounded, "Nueva versión")
                  ],
                )),
            responsive.espacio("largo", 2),
            ElevatedButton(
              onPressed: () {},
              child: Text("Cerrar sesión"),
              style: ElevatedButton.styleFrom(primary: CustomColor.azul_tres),
            )
          ],
        ),
      ),
    );
  }

  ListTile opcionTile(IconData icono, String titulo) {
    return ListTile(
      minLeadingWidth: 0,
      leading: Icon(
        icono,
        color: Colors.grey,
        size: 25,
      ),
      title: Text(
        titulo,
        style: TextStyle(fontSize: 15),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.grey,
        size: 20,
      ),
    );
  }

  SizedBox notificacionIcono() {
    return SizedBox(
        height: 40.0,
        width: 40.0, // fixed width and height
        child: Stack(
          children: [
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.grey,
              size: 30,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.5),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
