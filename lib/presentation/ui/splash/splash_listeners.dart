import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/splash_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/splash_state.dart';

class SplashListeners extends StatelessWidget {
  final Widget child;
  const SplashListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) => state.maybeMap(
        noConnected: (value) => context.push('/sign-in'),
        connected: (value) => context.push('/home'),
        failed: (value) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'close',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
            content: Text(value.message),
          ),
        ),
        orElse: () => null,
      ),
      child: child,
    );
  }
}
