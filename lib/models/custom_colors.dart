// File custom_color.dart
import 'package:flutter/material.dart';

class CustomColor {
  static const int _primary = 0xFFFF9000;
  static const int _canvas = 0xFF000000;

  static const MaterialColor brand = MaterialColor(
    _primary,
    <int, Color>{
      50: Color(0xFFFFF3E5),
      100: Color(0xFF331D00),
      200: Color(0xFF804800),
      300: Color(0xFFB36500),
      400: Color(_primary),
      500: Color(0xFFFFA633),
      600: Color(0xFFFFD399),
      700: Color(0xFFFFF4E6),
    },
  );

  static const MaterialColor canvas = MaterialColor(
    _canvas, 
    <int, Color>{
      2: Color.fromRGBO(9, 0, 0, 0.025),
      5: Color.fromRGBO(9, 0, 0, 0.05),
      7: Color.fromRGBO(9, 0, 0, 0.075),
      10: Color.fromRGBO(9, 0, 0, 0.1),
      15: Color.fromRGBO(9, 0, 0, 0.15),
      25: Color.fromRGBO(9, 0, 0, 0.25),
      50: Color.fromRGBO(9, 0, 0, 0.50),
      75: Color.fromRGBO(9, 0, 0, 0.75),
      85: Color.fromRGBO(9, 0, 0, 0.85),
      95: Color.fromRGBO(9, 0, 0, 0.95),
      100: Color(_canvas),
    }
  );
}
