import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/bottom_painter.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/header_painter.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/sign_in_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/sign_in_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/widgets/sign_in_main.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightPage = MediaQuery.of(context).size.height;
    var widthPage = MediaQuery.of(context).size.width;
    return SignInProvider(
      child: SignInListeners(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPaint(
                painter: HeaderPainter(),
                child: SizedBox(width: widthPage, height: heightPage * 0.3),
              ),
              const SignInMain(),
              CustomPaint(
                painter: BottomPainter(),
                child: SizedBox(width: widthPage, height: heightPage * 0.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
