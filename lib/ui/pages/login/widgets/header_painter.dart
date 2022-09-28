import 'package:flutter/material.dart';

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color.fromRGBO(131, 197, 190, 1);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, 0, size.height, 0, size.height);
    path.cubicTo(size.width * 0.08, size.height, size.width * 0.17,
        size.height * 0.98, size.width * 0.23, size.height * 0.88);
    path.cubicTo(size.width * 0.3, size.height * 0.75, size.width * 0.31,
        size.height * 0.52, size.width * 0.42, size.height * 0.44);
    path.cubicTo(size.width * 0.52, size.height * 0.35, size.width * 0.66,
        size.height * 0.47, size.width * 0.77, size.height * 0.43);
    path.cubicTo(size.width * 0.88, size.height * 0.41, size.width * 0.96,
        size.height * 0.26, size.width, size.height * 0.1);
    path.cubicTo(size.width, size.height * 0.07, size.width, size.height * 0.03,
        size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
