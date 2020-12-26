import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import './modules/counter/blocs/counter_bloc.dart';
import './modules/counter/counter_screen.dart';
import 'modules/counter/blocs/counter_class_bloc.dart';


void main() {
  // AppSettings settings = AppSettings();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
  //   .then((_) => runApp(MyApp(settings: settings)));
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
      ),
      home: BlocProvider<CounterBloc>(
        create: (BuildContext context) => CounterBloc(0),
        child: CounterScreen(title: 'Flutter Demo'),
      ),
    );
  }
}
