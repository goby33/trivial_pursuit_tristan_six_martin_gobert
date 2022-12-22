import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/bottom_painter.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/header_painter.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/sign_up_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/sign_up_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/widgets/sign_up_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightPage = MediaQuery.of(context).size.height;
    var widthPage = MediaQuery.of(context).size.width;
    return SignUpProvider(
      child: SignUpListeners(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPaint(
                painter: HeaderPainter(color: Theme.of(context).primaryColor),
                child: SizedBox(width: widthPage, height: heightPage * 0.3),
              ),
              const SignUpMain(),
              CustomPaint(
                painter: BottomPainter(color: Theme.of(context).primaryColor),
                child: SizedBox(width: widthPage, height: heightPage * 0.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
