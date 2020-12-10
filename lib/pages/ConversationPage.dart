import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/ChatAppBar.dart';
import 'package:flutter_app/widgets/ChatListWidget.dart';
import 'package:flutter_app/widgets/ConversationBottomSheet.dart';
import 'package:flutter_app/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() {
    return _ConversationPageState();
  }
  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build (BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: ChatAppBar(),
          body: Container(
            color: Colors.white,
            child: Stack(
              children:  <Widget>[
                Column(
                  children: <Widget>[
                    ChatListWidget(),
                    GestureDetector(
                      child: InputWidget(),
                      onPanUpdate: (detail) {
                        if (detail.delta.dy < 0) { // User swipe down
                          _scaffoldKey.currentState.showBottomSheet<Null>((BuildContext context) {

                            return ConversationBottomSheet();
                          });
                        } // delta.dx can be used for detecting left and right gestures on any widget.
                      },
                    )

                  ],
                )
              ],
            ),
          ),

        )
    );
  }
}