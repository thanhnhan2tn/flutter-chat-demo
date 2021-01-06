import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';

class Circle extends CustomPainter  {
  final _paint = Paint()
    ..color = Palette.primaryColor
    ..strokeWidth = 2
    // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _paint,
    );
  }
   @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
