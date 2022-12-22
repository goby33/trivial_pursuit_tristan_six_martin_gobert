import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/splash/splash_listeners.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/splash/splash_provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashProvider(
      child: SplashListeners(
        child: Scaffold(
            body: Center(
          child: CircularProgressIndicator(),
        )),
      ),
    );
  }
}
