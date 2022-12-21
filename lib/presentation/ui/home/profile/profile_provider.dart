import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/profile_cubit.dart';

class ProfileProvider extends StatelessWidget {
  final Widget child;
  const ProfileProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepositoryImpl.getInstance(),
      child: BlocProvider(
        create: (context) => ProfileCubit(
          authRepository: context.read<AuthRepositoryImpl>(),
        )..getProfile(),
        child: child,
      ),
    );
  }
}
