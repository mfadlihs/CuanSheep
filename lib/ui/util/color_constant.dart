import 'package:flutter/material.dart';

class ColorConstants {
  static const primaryColor = Color(0xFFFFE465);
  static const secondaryColor = Color(0xFF343A40);
  static const tertiaryColor = Color(0xFFEAB139);
  static const backgroundColor = Color(0xfff4f5ff);
  static const blue = Color(0xFF376AED);
  static const icon = Color(0xff130F26);

  static const black2 = Color(0xFF272727);

  static const text2 = Color(0xff393939);

  static MaterialColor getPrimaryMaterialColor() {
    return MaterialColor(
      primaryColor.value,
      const <int, Color>{
        50: Color(0xFFFFFFFF),
        100: Color(0xFFfffae0),
        200: Color(0xfffff4c1),
        300: Color(0xffffefa3),
        400: Color(0xffffe984),
        500: primaryColor,
        600: Color(0xffe6cd5b),
        700: Color(0xffb3a047),
        800: Color(0xff807233),
        900: Color(0xff4c441e),
      },
    );
  }
}
