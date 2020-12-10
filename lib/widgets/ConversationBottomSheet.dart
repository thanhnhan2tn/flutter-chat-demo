import 'package:flutter/material.dart';
import 'package:flutter_app/config/Palette.dart';
import 'package:flutter_app/config/Styles.dart';
import 'package:flutter_app/widgets/ChatRowWidget.dart';

import 'ChatRowWidget.dart';
import 'NavigationPillWidget.dart';

class ConversationBottomSheet extends StatefulWidget {
  @override
  _ConversationBottomSheetState createState() => _ConversationBottomSheetState();
  const ConversationBottomSheet();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          NavigationPillWidget(),
          Center(child: Text("Message", style: Styles.textHeading)),
          SizedBox(height: 20,),
          ListView.separated(
            shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (c, i) { return ChatRowWidget();},
              separatorBuilder: (c, i) => Padding(
                padding: EdgeInsets.only(left: 75, right: 20),
                child: Divider(color: Palette.accentColor),
              ))
        ],),
      ),
    );
  }
}