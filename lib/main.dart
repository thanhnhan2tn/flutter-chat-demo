import 'package:flutter/material.dart';
import 'package:flutter_app/config/styles.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import './modules/counter/blocs/counter_bloc.dart';
// import './modules/counter/counter_screen.dart';
// import 'modules/counter/blocs/counter_class_bloc.dart';
import 'modules/signin_signup/signin.dart';
import 'modules/signin_signup/signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'AvenirNextLT',
        primaryTextTheme: TextTheme(bodyText2: Styles.body2, bodyText1: Styles.body1),
      ),
      // home: SignIn(),
      routes: {
        '/': (context) => SignIn(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        // '/on_board': (context) => OnBoarding(), // on_board
      },
    );
  }
}
