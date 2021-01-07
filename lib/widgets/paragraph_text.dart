import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  ParagraphText({this.text, this.fontWeight: FontWeight.normal, this.textAlign: TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: this.fontWeight,
        height: 1.5
      ),
      textAlign: this.textAlign,
    );
  }
}
