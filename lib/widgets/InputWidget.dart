import 'package:flutter/material.dart';
import 'package:flutter_app/config/Palette.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingControler = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Material(
            child: new Container(
              child: new IconButton(
                  icon: new Icon(Icons.face),
                  color: Palette.primaryColor,
                  onPressed: null,
              ),
            ),
            color: Colors.white,
          ),
          Flexible(
              child: Container(
                  child: TextField(
                    style: TextStyle(color: Palette.primaryTextColor, fontSize: 14.0),
                    controller: textEditingControler,
                    decoration: InputDecoration.collapsed(
                        hintText: 'type message',
                        hintStyle: TextStyle(color: Palette.greyColor)
                    ),
                  ))
          ),
          Material(
            child: Container(
              child: IconButton(
                icon: Icon(Icons.send),
                color: Palette.primaryColor,
                onPressed: null,
              ),
            ),
            color: Colors.white,
          )
        ],
      ),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        border: new Border(
          top: BorderSide(
            color: Palette.greyColor,
            width: 0.1
          )
        ),
        color: Colors.white
      ),
    );
  }
}