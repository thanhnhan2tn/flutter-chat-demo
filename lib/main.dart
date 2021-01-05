import 'package:flutter/material.dart';
import 'package:flutter_app/modules/login_register/login.dart';

// import './modules/counter/blocs/counter_bloc.dart';
import 'modules/main/main_screen.dart';

void main() {
  // AppSetting settings = AppSettings();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
  //   .then((_) => runApp(MyApp(settings: settings)));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        fontFamily: "Sofia Pro",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/main': (context) => MainScreen(title: "Home"),
        '/': (context) => LoginScreen()
      }
    );
  }
}
