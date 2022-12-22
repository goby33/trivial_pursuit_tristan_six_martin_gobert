import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/splash_cubit.dart';


class SplashProvider extends StatelessWidget {
  final Widget child;
  const SplashProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepositoryImpl.getInstance(),
      child: BlocProvider(
        create: (context) => SplashCubit(
          authRepository: context.read<AuthRepositoryImpl>(),
        )..isConnected(),
        child: child,
      ),
    );;
  }
}
