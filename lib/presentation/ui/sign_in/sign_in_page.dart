import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/background_auth.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/sign_in_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/sign_in_provider.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/widgets/sign_in_main.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInProvider(
      child: SignInListeners(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: BackgroundAuth(
            child: const SignInMain(),
          ),
        ),
      ),
    );
  }
}
