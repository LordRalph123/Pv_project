import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pvc_sizing/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'seyinde_s_application19',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.zeroScreen,
      routes: AppRoutes.routes,
    );
  }
}
