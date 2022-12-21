import 'package:flutter/material.dart';

class SignInMainHeader extends StatelessWidget {
  const SignInMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text(
        "Sign In",
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
