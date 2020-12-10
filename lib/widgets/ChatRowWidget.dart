import 'package:flutter/material.dart';
import 'package:flutter_app/config/Assets.dart';
import 'package:flutter_app/config/Styles.dart';
import 'package:intl/intl.dart';

class ChatRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
      child: Row(
        children: [
          Expanded(
            flex: 8, child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: Image.asset(Assets.user).image,
              ),
              SizedBox(width: 15),
              Container(
                child: Column(
                  children: [
                    Text('Nhan Thai', style: Styles.subHeading),
                    Text('What\'s up?', style: Styles.subText),
                  ],
                ),
              )
            ],
          )),
          Expanded(child: Column(children: [
            Text(
                DateFormat('kk:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(8640000000000000)
                ),
                style: Styles.date
            ),
          ])
          )
        ],
      ),
    );
  }
}