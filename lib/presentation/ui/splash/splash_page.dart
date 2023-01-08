import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/splash_cubit.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SplashCubit(
            authRepository: context.read<AuthRepositoryImpl>(),
            userModelRepositoryImpl: context.read<UserModelRepositoryImpl>(),
          ),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) =>
            state.maybeMap(
              noConnected: (value) => context.push('/sign-in'),
              connected: (value) => context.push('/home'),
              orElse: () => print('ppp'),
            ),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            context.read<SplashCubit>().isConnected();
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
