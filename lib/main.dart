import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ConversationPageList.dart';

void main() {
  runApp(Messio());
}

class Messio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messio',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ConversationPageList(),
    );
  }
}
