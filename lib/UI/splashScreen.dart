import 'package:flutter/material.dart';
import 'package:xperiences/core/responsive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
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
