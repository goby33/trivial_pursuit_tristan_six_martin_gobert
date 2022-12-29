import 'package:flutter/material.dart';

class ForgotPasswordMainHeader extends StatelessWidget {
  const ForgotPasswordMainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        "Forgot Password",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
