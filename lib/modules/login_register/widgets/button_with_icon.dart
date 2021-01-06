import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';

class ButtonWithIcon extends StatelessWidget {
  final Icon icon;
  final String label;
  final onPressed;

  ButtonWithIcon({this.icon, this.label, this.onPressed});

  _buildButton() {
    if (this.label != null) {
      return RaisedButton.icon(
          color: Palette.primaryColor,
          onPressed: this.onPressed,
          icon: this.icon,
          label: Text(
            this.label?.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ));
    }
    return Ink(
      decoration: const ShapeDecoration(
        color: Color(0xFFFE724C),
        shape: CircleBorder(),
      ),
      child: IconButton(
        icon: this.icon,
        onPressed: this.onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      height: 67,
      child: this._buildButton(),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: Offset(2, 2),
            blurRadius: 20,
            spreadRadius: 0.5,
          ),
        ],
      ),
    );
  }
}
