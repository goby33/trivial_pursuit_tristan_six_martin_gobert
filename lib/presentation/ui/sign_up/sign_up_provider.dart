import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_model_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/sign_up_cubit.dart';

class SignUpProvider extends StatelessWidget {
  final Widget child;
  const SignUpProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SignUpCubit(
          authRepository: context.read<AuthRepositoryImpl>(),
          userModelRepository: context.read<UserModelRepositoryImpl>(),
        ),
        child: child,
      );
  }
}
