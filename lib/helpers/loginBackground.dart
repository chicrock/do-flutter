import 'package:flutter/material.dart';

class LoginBackground extends CustomPainter {
  final bool isJoin;

  LoginBackground({@required this.isJoin});

  @override
  void paint(Canvas canvas, Size size) {
    // Create Paint object and set the color prop to Colors.blue
    Paint paint = Paint()..color = isJoin ? Colors.red : Colors.blue[900];
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 5), size.height / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
