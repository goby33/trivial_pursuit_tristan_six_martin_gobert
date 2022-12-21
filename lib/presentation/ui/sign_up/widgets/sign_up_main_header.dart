import 'package:flutter/material.dart';

class SignUpMainHeader extends StatelessWidget {
  const SignUpMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text(
        "Sign Up",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(173, 185, 227, 1),
        ),
      ),
    );
  }
}
