import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:xperiences/UI/logic/usuario_logic/provider.dart';
import 'package:xperiences/UI/logic/usuario_logic/state.dart';
import 'package:xperiences/UI/widgets/baseScreen.dart';
import 'package:xperiences/UI/widgets/loginScreen.dart';
import 'package:xperiences/core/changeNotifier.dart';
import 'package:xperiences/core/responsive.dart';
import 'package:xperiences/domain/entidades/usuario.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkData1 = checkData();
  }

  Future? checkData1;

  Future<bool?> checkData() async {
    await ref
        .read(controller.notifier)
        .checkLocationPermission(context)
        .then((value) async {
      if (value == "reintentar") {
        checkData1 = checkData();
      } else if (value == true) {
        await ref
            .read(controller.notifier)
            .insertInitialData()
            .then((value) async {
          if (value == true) {
            await ref.read(usuarioNotifier.notifier).obtenerUsuario();
          } else {
            Fluttertoast.showToast(msg: "Ocurrió un error, intenta nuevamente");
          }
        });
      } else {
        Fluttertoast.showToast(msg: "Ocurrió un error, intenta nuevamente");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    ref.listen<UsuarioState>(usuarioNotifier, (previous, next) {
      next.when(
          initial: () {},
          loading: () {},
          data: (data) async {
            Timer(Duration(seconds: 1), () {
              if (data is Usuario) {
                ref.read(controller.notifier).putUsuario(data);
                Navigator.of(context).pushAndRemoveUntil(
                    CupertinoPageRoute(builder: (context) => BaseScreen()),
                    (route) => false);
              } else {
                Navigator.of(context).pushAndRemoveUntil(
                    CupertinoPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);
              }
            });
          },
          error: (error) {
            Fluttertoast.showToast(msg: "Ocurrió un error, intenta nuevamente");
          });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: responsive.width,
              child: Image.asset(
                "assets/splash.gif",
                width: responsive.width / 2,
              ),
            ),
            Text(
              "XPERIENCES",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            Text(
              "\nDisfruta una aventura de viaje . . .",
              style: TextStyle(
                  fontSize: 15,
                  //  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            responsive.espacio("largo", 2),
            Image.asset("assets/loading2.gif", width: responsive.hp(12)),
          ],
        ),
      ),
    );
  }
}
