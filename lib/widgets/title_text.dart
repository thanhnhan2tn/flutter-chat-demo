import 'package:flutter/material.dart';
import 'package:flutter_app/config/styles.dart';

class TitleText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  TitleText({this.text, this.fontWeight: FontWeight.normal, this.textAlign: TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: Styles.subHeading,
      textAlign: this.textAlign,
    );
  }
}
