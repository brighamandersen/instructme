// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

// Theme

const THEME_PRIMARY = Color(0xFF7CC99B);
const THEME_SECONDARY = Color(0xFFCCD2E3);
const THEME_TEXT_COLOR = Color(0xFF161616);
const THEME_NAVBAR_SURFACE = Color(0xFFFFFFFF);
const THEME_BACKGROUND = Color(0xFFFAFDFD);
const THEME_PRIMARY_LIGHT = Color(0xFFBFE3D8);
const THEME_VARIANT_DARK = Color(0xFFABBDC7);
const THEME_VARIANT_LIGHT = Color(0xFFE6EEFC);
const THEME_SECONDARY_DARKEST = Color(0xFF515863);
const THEME_SECONDARY_DARKER = Color(0xFF666A70);
const THEME_PRIMARY_VERY_LIGHT = Color(0xFFDFF1EB);
const THEME_CARD_BORDER = Color(0xFFC4C4C4);

// Other Theme

const BORDER_RADIUS = Radius.circular(7.0);

Map<int, Color> shades = const {
  50: Color.fromRGBO(124, 201, 155, .1),
  100: Color.fromRGBO(124, 201, 155, .2),
  200: Color.fromRGBO(124, 201, 155, .3),
  300: Color.fromRGBO(124, 201, 155, .4),
  400: Color.fromRGBO(124, 201, 155, .5),
  500: Color.fromRGBO(124, 201, 155, .6),
  600: Color.fromRGBO(124, 201, 155, .7),
  700: Color.fromRGBO(124, 201, 155, .8),
  800: Color.fromRGBO(124, 201, 155, .9),
  900: Color.fromRGBO(124, 201, 155, 1),
};
MaterialColor MATERIAL_PRIMARY = MaterialColor(0x7CC99B, shades);
