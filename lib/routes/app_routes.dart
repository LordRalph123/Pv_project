import 'package:flutter/material.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/five_screen/five_screen.dart';
import '../presentation/four_screen/four_screen.dart';
import '../presentation/one_screen/one_screen.dart';
import '../presentation/seven_screen/seven_screen.dart';
import '../presentation/six_screen/six_screen.dart';
import '../presentation/three_screen/three_screen.dart';
import '../presentation/two_screen/two_screen.dart';
import '../presentation/zero_screen/zero_screen.dart';

class AppRoutes {
  static const String zeroScreen = '/zero_screen';

  static const String oneScreen = '/one_screen';

  static const String twoScreen = '/two_screen';

  static const String threeScreen = '/three_screen';

  static const String fourScreen = '/four_screen';

  static const String fiveScreen = '/five_screen';

  static const String sixScreen = '/six_screen';

  static const String sevenScreen = '/seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    zeroScreen: (context) => ZeroScreen(),
    oneScreen: (context) => OneScreen(),
    twoScreen: (context) => TwoScreen(),
    threeScreen: (context) => ThreeScreen(),
    fourScreen: (context) => FourScreen(),
    fiveScreen: (context) => FiveScreen(),
    sixScreen: (context) => SixScreen(),
    sevenScreen: (context) => SevenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
