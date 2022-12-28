import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/auth_repository_impl.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/repositories/game_repository_impl.dart';

class HomeProvider extends StatelessWidget {
  final Widget child;
  HomeProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider(
        create: (context) => GameRepositoryImpl.getInstance(),
      ),
      RepositoryProvider(
        create: (context) => AuthRepositoryImpl.getInstance(),
      ),
    ], child: child);
  }
}
