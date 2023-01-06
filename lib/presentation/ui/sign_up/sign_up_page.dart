import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/background_auth.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/sign_up_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/widgets/sign_up_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignUpProvider(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundAuth(
          child: const SignUpMain(),
        ),
      ),
    );
  }
}
