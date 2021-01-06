import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final onPressed;

  Button({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(5, 5),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: RaisedButton(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        onPressed: this.onPressed,
        child: Text(
          this.label.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
