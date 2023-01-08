import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/sign_in_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/sign_in_state.dart';

class SignInListeners extends StatelessWidget {
  final Widget child;
  const SignInListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) => state.maybeMap(
        signIn: (value) => context.push('/home'),
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
