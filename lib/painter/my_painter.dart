import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        const Offset(5, 10),
        const Offset(5, 91),
        Paint()
          ..strokeWidth = 1
          ..color = Colors.white);

    canvas.drawCircle(const Offset(5, 10), 6, Paint()..color = Colors.white);

    canvas.drawCircle(const Offset(5, 10), 3,
        Paint()..color = const Color.fromARGB(255, 133, 216, 234));

    canvas.drawCircle(const Offset(5, 91), 6,
        Paint()..color = const Color.fromARGB(255, 194, 236, 245));

    canvas.drawCircle(const Offset(5, 91), 3, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
