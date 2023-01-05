import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/settings_profile_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/settings_profile_state.dart';

class SettingsListeners extends StatelessWidget {
  final Widget child;
  SettingsListeners({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsProfileCubit, SettingsProfileState>(
        listener: (context, state) => state.maybeMap(
          success: (value) =>  Navigator.of(context).pop(),
            errorUserNoConnected: (value) => context.push('/'),
            orElse: () {}
        ),
      child: child,);
  }
}
