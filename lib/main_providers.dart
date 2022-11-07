import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trivial_pursuit_app/data/repositories/user_repository.dart';
import 'package:trivial_pursuit_app/tests/jeux_cubit.dart';
import 'package:trivial_pursuit_app/tests/user_cubit.dart';

import 'data/repositories/question_repository.dart';

class MainProviders extends StatelessWidget {
  final Widget child;

  const MainProviders({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      BlocProvider<UserCubit>(
        create: (context) =>
            UserCubit(userRepository: UserRepository.getInstance()),
      ),
    ], child: child);
  }
}
