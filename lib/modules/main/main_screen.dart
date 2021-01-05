import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    Key key,
    this.title = 'Home',
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext ctx) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text("This is home"),
        ),
      ),
    );
  }
}
