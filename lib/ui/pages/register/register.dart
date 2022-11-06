import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_app/ui/pages/register/widgets/register_form.dart';

import '../../common//bottom_painter.dart';
import '../../common//header_painter.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              child: SizedBox(
                  width: MediaQuery.of(context).size.width, height: 200),
            ),
          ),
          Positioned(
            top: heightPage * 0.30,
            left: 80,
            child: const Text(
              "Register",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(173, 185, 227, 1),
              ),
            ),
          ),
          Positioned(
            top: heightPage * 0.45,
            child: SizedBox(width: widthPage, child: const RegisterForm()),
          ),
          Positioned(
            top: heightPage * 0.68,
            left: 0,
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push("/login");
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 30,
                    bottom: 10,
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
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.amber,
                    ),
                  ),
                )),
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
