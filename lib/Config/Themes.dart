import 'package:flutter/material.dart';

class Themes {
  static ThemeData principal = ThemeData(
    primaryColor: Color.fromRGBO(111, 203, 219, 1), //Azul claro
    primaryColorLight:
        Color.fromRGBO(111, 203, 219, .6), //Azul claro con transparencia
    primaryColorDark: Color.fromRGBO(0, 40, 82, 1), //Azul Oscuro
    canvasColor: Color.fromRGBO(0, 40, 82, .5), //Azul Oscuro con transparencia
    backgroundColor: Color.fromRGBO(62, 133, 180, 1), //azul semiclaro
    accentColor: Colors.grey[100], //gris claro
    buttonColor: Color.fromRGBO(147, 213, 0, 1), // verde
    fontFamily: 'Montserrat',
  );
}
