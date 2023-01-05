import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/settings_profile_cubit.dart';

class SettingsProvider extends StatelessWidget {
  final Widget child;
  SettingsProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsProfileCubit(
        authRepository: context.read<AuthRepositoryImpl>(),
        userModelRepositoryImpl: context.read<UserModelRepositoryImpl>(),
      ),
      child: child,
    );
  }
}
