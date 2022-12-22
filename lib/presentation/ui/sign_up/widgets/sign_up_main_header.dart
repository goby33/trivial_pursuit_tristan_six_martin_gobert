import 'package:flutter/material.dart';

class SignUpMainHeader extends StatelessWidget {
  const SignUpMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        "Sign Up",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
