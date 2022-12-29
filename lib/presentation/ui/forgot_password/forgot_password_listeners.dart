import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/forgot_password_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/forgot_password_state.dart';

class ForgotPasswordListeners extends StatelessWidget {
  final Widget child;
  const ForgotPasswordListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) => state.maybeMap(
        orElse: () => null,
        success: (value) => context.push('/sign-in'),
        error: (value) => ScaffoldMessenger.of(context).showSnackBar(
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
      ),
      builder: (context, state) => child,
    );
  }
}
