import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/sign_up_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/sign_up_state.dart';

class SignUpListeners extends StatelessWidget {
  final Widget child;
  const SignUpListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) => state.maybeMap(
        signUp: (value) => context.push('/sign-up/welcome'),
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
      builder: (context, state) => child,
    );
  }
}
