import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/user_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/states/cubits/ranking_cubit.dart';

class RankingProvider extends StatelessWidget {
  final Widget child;
  const RankingProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RepositoryProvider(
      create: (context) => UserRepositoryImpl.getInstance(),
      child: BlocProvider(
        create: (context) => RankingCubit(
          userRepository: context.read<UserRepositoryImpl>(),
        ),
        child: child,
      ),
    );
  }
}
