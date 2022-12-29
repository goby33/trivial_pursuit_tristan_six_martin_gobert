import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/bottom_painter.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/header_painter.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/forgot_password/widgets/forgot_password_main.dart';

import 'forgot_password_listeners.dart';
import 'forgot_password_provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightPage = MediaQuery.of(context).size.height;
    var widthPage = MediaQuery.of(context).size.width;
    return ForgotPasswordProvider(
      child: ForgotPasswordListeners(
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
              const ForgotPasswordMain(),
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
