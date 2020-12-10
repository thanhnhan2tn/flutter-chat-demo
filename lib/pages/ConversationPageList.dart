import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ConversationPage.dart';

class ConversationPageList extends StatefulWidget {
  @override
  _ConversationPageListState createState() {
    return _ConversationPageListState();
  }
  const ConversationPageList();
}

class _ConversationPageListState extends State<ConversationPageList> {
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