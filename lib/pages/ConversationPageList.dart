import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ConversationPage.dart';
import 'package:rubber/rubber.dart';


class ConversationPageList extends StatefulWidget {
  @override
  _ConversationPageListState createState() {
    return _ConversationPageListState();
  }
  const ConversationPageList();
}

class _ConversationPageListState extends State<ConversationPageList> with SingleTickerProviderStateMixin {
  var controller;
  @override
  void initState() {
    controller = RubberAnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
}