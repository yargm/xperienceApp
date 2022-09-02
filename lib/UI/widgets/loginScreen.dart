import 'package:flutter/material.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/customTextField.dart';
import 'package:xperiences/core/responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: responsive.hp(100),
        width: responsive.wp(100),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/loginBackground.png"),
                fit: BoxFit.fitHeight)),
        padding: EdgeInsets.symmetric(
            vertical: responsive.hp(5), horizontal: responsive.wp(10)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(
                    color: CustomColor.azul_tres,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              responsive.espacio("largo", 1),
              Text(
                "Inicia sesión para disfrutar los beneficios de la experiencia",
                style: TextStyle(
                    fontSize: 15,
                    //  fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: responsive.hp(5),
              ),
              CustomTextField(
                hintText: "Correo electrónico",
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: CustomColor.azul_dos,
                ),
              ),
              SizedBox(
                height: responsive.hp(5),
              ),
              CustomTextField(
                hintText: "Contraseña",
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  color: CustomColor.azul_dos,
                ),
              ),
              SizedBox(
                height: responsive.hp(20),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Acceder"),
                    style: ElevatedButton.styleFrom(
                        primary: CustomColor.azul_tres),
                  )),
            ]),
      )),
    );
  }
}
