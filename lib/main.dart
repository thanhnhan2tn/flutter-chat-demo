import 'package:flutter/material.dart';
import 'package:flutter_app/modules/login_register/login.dart';
import 'package:flutter_app/modules/login_register/on_boarding.dart';

import 'modules/main/main_screen.dart';

void main() {
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
        '/': (context) => LoginScreen(),
        '/on_board': (context) => OnBoarding(), // on_board
      }
    );
  }
}
