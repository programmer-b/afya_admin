import 'package:flutter/material.dart';

const _primaryColor = MaterialColor(
  0xff57cac3,
  <int, Color>{
    50: Color(0xffe0f7f7),
    100: Color(0xffb3e8e7),
    200: Color(0xff80d9d8),
    300: Color(0xff4dcacb),
    400: Color(0xff26c1c1),
    500: Color(0xff57cac3),
    600: Color(0xff00b3a7),
    700: Color(0xff009c8e),
    800: Color(0xff007c6b),
    900: Color(0xff005245),
  },
);

MaterialColor get primaryColor => _primaryColor;
Color textColorOnPrimary = Colors.white;
Color colorOnPrimary = Colors.white;
Color primaryTextColor = Colors.black54;