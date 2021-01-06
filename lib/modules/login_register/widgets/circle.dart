import 'package:flutter/material.dart';

class Circle extends CustomPainter  {

  final _paint = Paint()
    ..color = Color(0xFFE2E2E2)
    ..strokeWidth = 2
  // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(
      Rect.fromCenter(center: Offset(size.width/2, size.width/2), width: 226, height: 226),
      _paint,
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
