import 'package:flutter/material.dart';

class MyTilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        const Offset(5, 10),
        const Offset(5, 91),
        Paint()
          ..strokeWidth = 1
          ..color = const Color.fromARGB(255, 84, 106, 123));

    canvas.drawCircle(const Offset(5, 10), 6,
        Paint()..color = const Color.fromARGB(255, 84, 106, 123));

    canvas.drawCircle(const Offset(5, 10), 3,
        Paint()..color = const Color.fromARGB(255, 255, 255, 255));

    canvas.drawCircle(const Offset(5, 91), 6,
        Paint()..color = const Color.fromARGB(255, 169, 180, 189));

    canvas.drawCircle(const Offset(5, 91), 3,
        Paint()..color = const Color.fromARGB(255, 84, 106, 123));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
