import 'package:flutter/material.dart';

import 'bottom_painter.dart';
import 'header_painter.dart';

class BackgroundAuth extends StatelessWidget {
  final Widget child;
  BackgroundAuth({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightPage = MediaQuery.of(context).size.height;
    var widthPage = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomPaint(
          painter: HeaderPainter(color: Theme.of(context).primaryColor),
          child: SizedBox(width: widthPage, height: heightPage * 0.3),
        ),
        child,
        CustomPaint(
          painter: BottomPainter(color: Theme.of(context).primaryColor),
          child: SizedBox(width: widthPage, height: heightPage * 0.2),
        ),
      ],
    );
  }
}
