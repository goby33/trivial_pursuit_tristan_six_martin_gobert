import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/profile_state.dart';

class ProfileListeners extends StatelessWidget {
  final Widget child;
  const ProfileListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) => state.maybeMap(
        noSignIn: (value) => context.push('/sign-in'),
        failed: (value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              action: SnackBarAction(
                label: 'close',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
              content: Text(value.message),
            ),
          );
          context.push('/sign-in');
          return null;
        },
        orElse: () => null,
      ),
      child: child,
    );
  }
}
