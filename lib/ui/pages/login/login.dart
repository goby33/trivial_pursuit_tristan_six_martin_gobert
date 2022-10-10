import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_app/ui/pages/login/widgets/bottom_painter.dart';
import 'package:trivial_pursuit_app/ui/pages/login/widgets/header_painter.dart';
import 'package:trivial_pursuit_app/ui/pages/login/widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: CustomPaint(
              painter: HeaderPainter(),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width, height: 200),
            ),
          ),
          const Positioned(
            top: 220,
            left: 200,
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(173, 185, 227, 1),
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: LoginForm(),
            ),
          ),
          const Positioned(
            top: 530,
            right: 70,
            child: Text(
              "Forgot ? ",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(173, 185, 227, 1),
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 0,
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push("/subscription");
              },
              child: Container(

                padding: const EdgeInsets.only(
                  top: 15,
                  left: 30,
                  bottom: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(172, 221, 231, 1),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(183, 68, 184, 1),
                    ),
                  ),
                )
              ),
            ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CustomPaint(
              painter: BottomPainter(),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width, height: 200),
            ),
          ),
        ],
      ),
    );
  }
}
