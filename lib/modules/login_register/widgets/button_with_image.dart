import 'package:flutter/material.dart';

class ButtonWithImage extends StatelessWidget {
  final String asset;
  final String label;
  final onPressed;

  ButtonWithImage({this.asset, this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 140,
        child: RaisedButton.icon(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          onPressed: this.onPressed,
          icon: Image.asset(
            this.asset,
            width: 29,
            height: 29,
          ),
          label: this.label != null
              ? Text(
                  this.label.toUpperCase(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
