import 'package:flutter/material.dart';

class LoginBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Create Paint object and set the color prop to Colors.blue
    Paint paint = Paint()..color = Colors.blue[900];
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 5), size.height / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
