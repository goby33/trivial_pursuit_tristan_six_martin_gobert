import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the app'),
            ElevatedButton(
              onPressed: () {
                context.push('/home');
              },
              child: const Text('Go to home'),
            ),
          ],
        ),
      ),
    );
  }
}
