import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  double _width = 0.0;
  double _height = 0.0;
  double _diagonal = 0.0;
  bool _isTablet = false;
  bool _isBaby = false;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  bool get isTablet => _isTablet;
  bool get isBaby => _isBaby;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;
    //diagonal con teorema de pitágoras
    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
    _isTablet = size.shortestSide >= 600;
    _isBaby = size.shortestSide <= 350;
  }

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;
  double dp(double percent) => _diagonal * percent / 100;

  SizedBox espacio(String tipo, int cantidad) {
    double medida = 0.0;
    if (cantidad == 1) {
      //grande
      medida = (tipo == "largo" ? _height : _width) * 0.01;
    } else if (cantidad == 2) {
      //mediano
      medida = (tipo == "largo" ? _height : _width) * 0.02;
    } else if (cantidad == 3) {
      //pequeño
      medida = (tipo == "largo" ? _height : _width) * 0.03;
    }
    return SizedBox(
      height: tipo == "largo" ? medida : 0,
      width: tipo == "ancho" ? medida : 0,
    );
  }
}
