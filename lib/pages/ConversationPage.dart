import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/ChatAppBar.dart';
import 'package:flutter_app/widgets/ChatListWidget.dart';
import 'package:flutter_app/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() {
    return _ConversationPageState();
  }
  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build (BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: ChatAppBar(),
          body: Stack(
            children:  <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(),
                  InputWidget(),
                ],
              )
            ],
          ),
        )
    );
  }
}