import 'package:flutter/material.dart';
import 'package:trivial_pursuit_app/presentation/ui/common/bottom_painter.dart';
import 'package:trivial_pursuit_app/presentation/ui/common/button_login.dart';
import 'package:trivial_pursuit_app/presentation/ui/common/header_painter.dart';
import 'package:trivial_pursuit_app/presentation/ui/user_forgot/widgets/user_forgot_form.dart';

class UserForgot extends StatelessWidget {
  const UserForgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightPage = MediaQuery.of(context).size.height;
    var widthPage = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(233, 236, 239, 1),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: CustomPaint(
              painter: HeaderPainter(),
              child: SizedBox(width: widthPage, height: heightPage * 0.3),
            ),
          ),
          Positioned(
            top: heightPage * 0.30,
            left: 160,
            child: const Text(
              "Forgot ?",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(173, 185, 227, 1),
              ),
            ),
          ),
          Positioned(
            top: heightPage * 0.45,
            child: SizedBox(
              width: widthPage,
              child: const UserForgotForm(),
            ),
          ),
          Positioned(
            top: heightPage * 0.68,
            left: 0,
            child: const ButtonLogin(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomPaint(
              painter: BottomPainter(),
              child: SizedBox(width: widthPage, height: heightPage * 0.2),
            ),
          ),
        ],
      ),
    );
  }
}
