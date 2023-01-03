import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/commons/background_auth.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/forgot_password/widgets/forgot_password_main.dart';

import 'forgot_password_listeners.dart';
import 'forgot_password_provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordProvider(
      child: ForgotPasswordListeners(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: BackgroundAuth(
            child: const ForgotPasswordMain(),
          ),
        ),
      ),
    );
  }
}