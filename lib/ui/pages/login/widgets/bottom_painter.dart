import 'package:flutter/material.dart';

class BottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1


    // Path number 1


    paint.color = const Color.fromRGBO(131, 197, 190, 1);
    path = Path();
    path.lineTo(size.width, size.height * 0.03);
    path.cubicTo(size.width * 0.89, -0.03, size.width * 0.75, 0, size.width * 0.67, size.height * 0.13);
    path.cubicTo(size.width * 0.61, size.height * 0.22, size.width * 0.59, size.height * 0.34, size.width * 0.52, size.height * 0.42);
    path.cubicTo(size.width * 0.42, size.height * 0.52, size.width * 0.28, size.height * 0.47, size.width * 0.17, size.height * 0.54);
    path.cubicTo(size.width * 0.09, size.height * 0.58, size.width * 0.03, size.height * 0.68, size.width * 0.01, size.height * 0.8);
    path.cubicTo(0, size.height * 0.86, 0, size.height * 0.93, size.width * 0.01, size.height);
    path.cubicTo(size.width * 0.01, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.03, size.width, size.height * 0.03);
    canvas.drawPath(path, paint);


  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
