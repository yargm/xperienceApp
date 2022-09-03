import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xperiences/UI/logic/usuario_logic/provider.dart';
import 'package:xperiences/UI/logic/usuario_logic/state.dart';
import 'package:xperiences/UI/widgets/baseScreen.dart';
import 'package:xperiences/core/changeNotifier.dart';
import 'package:xperiences/core/colors.dart';
import 'package:xperiences/core/customTextField.dart';
import 'package:xperiences/core/responsive.dart';
import 'package:xperiences/domain/entidades/usuario.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController controlCorreo = TextEditingController();
  TextEditingController controlContrasena = TextEditingController();
  UsuarioState? state;
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    ref.listen<UsuarioState>(usuarioNotifier, (actualEstado, nuevoEstado) {
      setState(() {
        state = nuevoEstado;
      });
      nuevoEstado.when(
          initial: () {},
          loading: () {},
          data: (data) async {
            if (data is Usuario) {
              ref.read(controller.notifier).putUsuario(data);
              Navigator.of(context).pushAndRemoveUntil(
                  CupertinoPageRoute(builder: (context) => BaseScreen()),
                  (route) => false);
            } else {
              controlContrasena.clear();
              controlCorreo.clear();
              setState(() {});
              Fluttertoast.showToast(
                  msg: "El usuario no existe, intenta nuevamente");
            }
          },
          error: (e) {
            Fluttertoast.showToast(msg: "Ocurrió un error, intenta nuevamente");
          });
    });

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: responsive.hp(100),
          width: responsive.wp(100),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/loginBackground.png"),
                  fit: BoxFit.cover)),
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
                  controller: controlCorreo,
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
                  controller: controlContrasena,
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
                    child: state == const UsuarioState.loading()
                        ? Image.asset("assets/loading2.gif",
                            width: responsive.hp(10))
                        : ElevatedButton(
                            onPressed: () async {
                              if (controlCorreo.text.isEmpty ||
                                  controlContrasena.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Completa los campos requeridos");
                              } else {
                                await ref
                                    .read(usuarioNotifier.notifier)
                                    .iniciarSesion(controlCorreo.text.trim(),
                                        controlContrasena.text.trim());
                              }
                            },
                            child: Text("Acceder"),
                            style: ElevatedButton.styleFrom(
                                primary: CustomColor.azul_tres),
                          )),
              ]),
        ),
      )),
    );
  }
}
