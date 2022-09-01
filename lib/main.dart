import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xperiences/UI/baseScreen.dart';
import 'package:xperiences/UI/loginScreen.dart';
import 'package:xperiences/UI/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Xperience',
        debugShowCheckedModeBanner: false,
        home: BaseScreen(),
        theme: ThemeData(
          textTheme: GoogleFonts.exoTextTheme(Theme.of(context).textTheme),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          primarySwatch: Colors.blue,
        ));
  }
}
