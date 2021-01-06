import 'package:flutter/material.dart';

class CircleStroke extends CustomPainter  {

  final _paint = Paint()
    ..color = Color(0XFF2DBC48)
    ..strokeWidth = 2
    // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width/2, size.width/2), width: 310, height: 310),
      _paint,
    );
  }
   @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
