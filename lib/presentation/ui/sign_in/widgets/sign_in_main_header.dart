import 'package:flutter/material.dart';

class SignInMainHeader extends StatelessWidget {
  const SignInMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        "Sign In",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
