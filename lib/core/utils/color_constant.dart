import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray700 = fromHex('#666666');

  static Color gray400 = fromHex('#afafaf');

  static Color blueGray100 = fromHex('#d2d2d2');

  static Color blueGray400 = fromHex('#8d8d8d');

  static Color black900 = fromHex('#000000');

  static Color gray900 = fromHex('#1e1e1e');

  static Color green90001 = fromHex('#107900');

  static Color green900 = fromHex('#117900');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray4007e = fromHex('#7e8d8d8d');

  static Color gray100 = fromHex('#f6f6f6');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
