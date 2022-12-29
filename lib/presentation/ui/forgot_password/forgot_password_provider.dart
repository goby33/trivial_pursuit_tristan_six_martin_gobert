import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/forgot_password_cubit.dart';

class ForgotPasswordProvider extends StatelessWidget {
  final Widget child;
  const ForgotPasswordProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ForgotPasswordCubit(
          authRepository: context.read<AuthRepositoryImpl>(),
        ),
        child: child,
      );
  }
}
